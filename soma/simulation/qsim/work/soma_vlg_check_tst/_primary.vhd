library verilog;
use verilog.vl_types.all;
entity soma_vlg_check_tst is
    port(
        so              : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end soma_vlg_check_tst;
