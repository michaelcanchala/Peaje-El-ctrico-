library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ContadorCarrosPeaje is
    port (
        clk: in std_logic; -- Reloj
        reset: in std_logic; -- Reset del sistema
        vehicle_detected: in std_logic; -- Señal que indica la detección de un vehículo
        vehicle_count: out integer range 0 to 65535 -- Contador de vehículos
    );
end entity ContadorCarrosPeaje;

architecture archContadorCarros of ContadorCarrosPeaje is
    signal count_reg: integer range 0 to 65535 := 0; -- Registro de conteo de vehículos
begin
    process(clk, reset)
    begin
        if reset = '1' then
            count_reg <= 0; -- Reiniciar el contador cuando se activa el reset
        elsif rising_edge(clk) then
            if vehicle_detected = '1' then
                count_reg <= count_reg + 1; -- Incrementar el contador cuando se detecta un vehículo
            end if;
        end if;
    end process;

    vehicle_count <= count_reg; -- Salida del contador
end architecture;
