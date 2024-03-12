library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity controlador_01 is
    port (
        -- Entradas
        clk: in std_logic;
        reset: in std_logic;
        vehicle_detected: in std_logic;
        tag_valid: in std_logic;
        tag_id: in std_logic_vector(4 downto 0);
        back_sensor_detected: in std_logic;

        -- Salidas
        barrier_entry_control: out std_logic;
        barrier_exit_control: out std_logic;
        entry_semaphore: buffer std_logic; -- Cambio aquí
        exit_semaphore: out std_logic;
        display_category: out std_logic_vector(1 downto 0);
        display_time: out std_logic_vector(6 downto 0);
        display_vehicle_count: out std_logic_vector(6 downto 0);
        green_led: out std_logic;
        red_led: out std_logic;
        alarm: out std_logic
    );
end controlador_01;

architecture rtl of controlador_01 is
    -- Declaración de tipos
    type vehicle_category is (CATI, CATII, CATIII);

    -- Declaración de variables
    signal category: vehicle_category;
    signal timer: unsigned(15 downto 0);
    signal vehicle_count: unsigned(15 downto 0) := (others => '0');
    signal tag_attempts: unsigned(1 downto 0) := (others => '0');

begin
    -- Módulo de Sensor de Entrada (FRONT_SENSOR)
    process(clk, reset)
    begin
        if reset = '1' then
            timer <= (others => '0');
            barrier_entry_control <= '0';
            entry_semaphore <= '0';
            green_led <= '0';
            red_led <= '0';
            alarm <= '0';
            display_category <= (others => '0');
            display_time <= (others => '0');
            display_vehicle_count <= (others => '0');
            tag_attempts <= (others => '0');
        elsif rising_edge(clk) then
            if vehicle_detected = '1' then
                barrier_entry_control <= '1';
                entry_semaphore <= '1';
            end if;

            if tag_valid = '1' then
                case tag_id(4 downto 3) is
                    when "00" =>
                        category <= CATI;
                        display_category <= "00";
                    when "01" =>
                        category <= CATII;
                        display_category <= "01";
                    when "10" =>
                        category <= CATIII;
                        display_category <= "10";
                    when others =>
                        category <= CATI; -- Categoría por defecto
                        display_category <= "00";
                end case;

                green_led <= '1';
            else
                red_led <= '1';
                if tag_attempts < "11" then
                    tag_attempts <= tag_attempts + 1;
                else
                    alarm <= '1';
                end if;
            end if;

            if back_sensor_detected = '1' then
                barrier_entry_control <= '0';
                entry_semaphore <= '0';
                green_led <= '0';
                red_led <= '0';
                display_time <= std_logic_vector(timer);
                timer <= (others => '0');
                vehicle_count <= vehicle_count + 1;
                display_vehicle_count <= std_logic_vector(vehicle_count);
            end if;

            if entry_semaphore = '1' then
                timer <= timer + 1;
            end if;
        end if;
    end process;

    -- Módulo de Semáforo de Salida (exit_semaphore)
    process(clk, reset)
    begin
        if reset = '1' then
            barrier_exit_control <= '0';
            exit_semaphore <= '0';
        elsif rising_edge(clk) then
            if back_sensor_detected = '1' then
                barrier_exit_control <= '1';
                exit_semaphore <= '1';
            end if;

            if exit_semaphore = '1' then
                barrier_exit_control <= '0';
                exit_semaphore <= '0';
            end if;
        end if;
    end process;

end rtl;
