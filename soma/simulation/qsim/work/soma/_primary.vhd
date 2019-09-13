library verilog;
use verilog.vl_types.all;
entity soma is
    port(
        ai              : in     vl_logic_vector(7 downto 0);
        bi              : in     vl_logic_vector(7 downto 0);
        so              : out    vl_logic_vector(7 downto 0)
    );
end soma;
