library verilog;
use verilog.vl_types.all;
entity ripplecarry is
    port(
        cin             : in     vl_logic;
        x               : in     vl_logic_vector(3 downto 0);
        y               : in     vl_logic_vector(3 downto 0);
        s               : out    vl_logic_vector(3 downto 0);
        cout            : out    vl_logic
    );
end ripplecarry;
