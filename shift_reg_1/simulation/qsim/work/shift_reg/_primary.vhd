library verilog;
use verilog.vl_types.all;
entity shift_reg is
    port(
        i               : in     vl_logic;
        clk             : in     vl_logic;
        q               : out    vl_logic_vector(3 downto 0)
    );
end shift_reg;
