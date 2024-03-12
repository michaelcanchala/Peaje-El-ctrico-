library verilog;
use verilog.vl_types.all;
entity ContadorCarrosPeaje is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        vehicle_detected: in     vl_logic;
        vehicle_count   : out    vl_logic_vector(15 downto 0)
    );
end ContadorCarrosPeaje;
