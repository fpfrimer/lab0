library verilog;
use verilog.vl_types.all;
entity soma_vlg_sample_tst is
    port(
        ai              : in     vl_logic_vector(7 downto 0);
        bi              : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end soma_vlg_sample_tst;
