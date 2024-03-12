Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
entity Barrera is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           semaforo_in : in STD_LOGIC_VECTOR(1 downto 0); -- Semáforo de entrada
           barrera_control : out STD_LOGIC); -- Control de la barrera: abrir ('1') o cerrar ('0')
end Barrera;

architecture Behavioral of Barrera is
begin
    process(clk, reset, semaforo_in)
    begin
        if reset = '1' then
            barrera_control <= '0'; -- Cerrar la barrera por defecto
        elsif semaforo_in = "00" then -- Si el semáforo de entrada está en rojo
            barrera_control <= '0'; -- Cerrar la barrera
        else
            barrera_control <= '1'; -- Abrir la barrera
        end if;
    end process;
end Behavioral;
