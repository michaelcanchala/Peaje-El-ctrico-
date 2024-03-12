library verilog;
use verilog.vl_types.all;
entity ContadorCarrosPeaje_vlg_check_tst is
    port(
        vehicle_count   : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end ContadorCarrosPeaje_vlg_check_tst;
