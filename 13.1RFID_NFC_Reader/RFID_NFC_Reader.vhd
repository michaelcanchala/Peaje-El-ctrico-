Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
entity RFID_NFC_Reader is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           vehicle_detected : in STD_LOGIC;
           valid_identification : out STD_LOGIC;
           alarm : out STD_LOGIC); -- Señal de alarma activada cuando se exceden los intentos
end RFID_NFC_Reader;

architecture Behavioral of RFID_NFC_Reader is
    signal identification_attempts : integer range 0 to 3 := 0; -- Contador de intentos
    signal identification_valid : STD_LOGIC := '0'; -- Estado inicial: identificación no válida
begin
    process(clk, reset, vehicle_detected)
    begin
        if reset = '1' then
            identification_attempts <= 0;
            identification_valid <= '0';
        elsif rising_edge(clk) then
            if vehicle_detected = '1' then
                -- Lógica para leer y validar la identificación del vehículo
                -- Si la identificación es válida, establecer identification_valid en '1'
                -- Si la identificación no es válida, incrementar identification_attempts
                -- Si identification_attempts es igual a 3, activar la alarma
            end if;
        end if;
    end process;
    valid_identification <= identification_valid;
    alarm <= '1' when identification_attempts = 3 else '0';
end Behavioral;
