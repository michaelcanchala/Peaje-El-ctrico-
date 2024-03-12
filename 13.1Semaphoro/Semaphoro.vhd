Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
entity Semaphoro is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           semaforo_out : out STD_LOGIC_VECTOR(1 downto 0); -- Semáforo de salida: rojo (00) o verde (01)
           semaforo_in : out STD_LOGIC_VECTOR(1 downto 0)); -- Semáforo de entrada: rojo (00) o verde (01)
end Semaphoro;

architecture Behavioral of Semaphoro is
    signal contador : integer range 0 to 20 := 0; -- Contador para gestionar el cambio de color

begin
    process(clk, reset)
    begin
        if reset = '1' then
            contador <= 0;
            semaforo_out <= "00"; -- Rojo
            semaforo_in <= "00"; -- Rojo
        elsif rising_edge(clk) then
            if contador = 10 then
                semaforo_out <= "01"; -- Verde
            elsif contador = 20 then
                semaforo_out <= "00"; -- Rojo
                contador <= 0;
            end if;
            contador <= contador + 1;
        end if;
    end process;
end Behavioral;
