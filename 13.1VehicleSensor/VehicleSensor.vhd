Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
entity VehicleSensor is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           vehicle_detected : out STD_LOGIC); -- Señal que indica la presencia de un vehículo
end VehicleSensor;

architecture Behavioral of VehicleSensor is
    signal vehicle_present : STD_LOGIC := '0'; -- Estado inicial: no se detecta ningún vehículo
begin
    process(clk, reset)
    begin
        if reset = '1' then
            vehicle_present <= '0';
        elsif rising_edge(clk) then
            -- Lógica para detectar la presencia de un vehículo
            -- Por ejemplo, puedes utilizar algún sensor físico para detectar la presencia de un vehículo
            -- Si el vehículo está presente, establecer vehicle_present en '1', de lo contrario, en '0'
        end if;
    end process;
    vehicle_detected <= vehicle_present;
end Behavioral;
