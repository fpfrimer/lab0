library verilog;
use verilog.vl_types.all;
entity shift_reg_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        i               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end shift_reg_vlg_sample_tst;
