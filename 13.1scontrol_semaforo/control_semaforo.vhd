library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity control_semaforo is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           boton : in STD_LOGIC;
           carro_pasando : in STD_LOGIC;
           sensor_carro_10m : in STD_LOGIC;
           luz_verde : out STD_LOGIC;
           luz_roja : out STD_LOGIC);
end control_semaforo;

architecture arch_control_semaforo of control_semaforo is
    type estado_semaforo is (rojo, verde);
    signal estado_actual, proximo_estado : estado_semaforo;
    signal contador_verde : integer range 0 to 10000000 := 0; -- Contador para el tiempo en verde
begin

    proceso_control : process(clk, reset)
    begin
        if reset = '1' then
            estado_actual <= rojo;
            contador_verde <= 0;
        elsif rising_edge(clk) then
            if estado_actual = rojo and boton = '1' then
                proximo_estado <= verde;
            elsif estado_actual = verde and carro_pasando = '1' then
                proximo_estado <= rojo;
                contador_verde <= 0;
            elsif estado_actual = rojo and sensor_carro_10m = '1' then
                proximo_estado <= verde;
            else
                proximo_estado <= estado_actual;
            end if;
            
            estado_actual <= proximo_estado;  -- Actualización de estado_actual en el proceso de control
            
            -- Actualización de contador_verde en el proceso de control
            if estado_actual = verde then
                if contador_verde < 5000000 then
                    contador_verde <= contador_verde + 1;
                else
                    contador_verde <= 0;
                end if;
            else
                contador_verde <= 0;
            end if;
        end if;
    end process proceso_control;

    proceso_cambio_estado : process(clk)
    begin
        if rising_edge(clk) then
            case estado_actual is
                when rojo =>
                    luz_verde <= '0';
                    luz_roja <= '1';
                when verde =>
                    if contador_verde < 5000000 then -- 5000000 ciclos = 1 segundo aproximadamente (dependiendo de la frecuencia del reloj)
                        luz_verde <= '1';
                        luz_roja <= '0';
                    else
                        luz_verde <= '0';
                        luz_roja <= '1';
                    end if;
                when others =>
                    luz_verde <= '0';
                    luz_roja <= '0';
            end case;
        end if;
    end process proceso_cambio_estado;

end arch_control_semaforo;
