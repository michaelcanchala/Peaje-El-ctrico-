Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
entity TollGateControl is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           vehicle_detected : in STD_LOGIC;
           valid_identification : in STD_LOGIC;
           barrier_control : out STD_LOGIC;
           gate_control : out STD_LOGIC);
end TollGateControl;

architecture Behavioral of TollGateControl is
    signal gate_open : STD_LOGIC := '0'; -- Estado inicial: talanquera cerrada
begin
    process(clk, reset, vehicle_detected, valid_identification)
    begin
        if reset = '1' then
            gate_open <= '0';
        elsif rising_edge(clk) then
            if vehicle_detected = '1' and valid_identification = '1' then
                gate_open <= '1'; -- Abrir la talanquera
            elsif vehicle_detected = '1' and valid_identification = '0' then
                gate_open <= '0'; -- Mantener la talanquera cerrada si la identificación no es válida
            end if;
        end if;
    end process;
    barrier_control <= '1' when gate_open = '1' else '0'; -- Control de la barrera
    gate_control <= gate_open; -- Control de la talanquera
end Behavioral;
