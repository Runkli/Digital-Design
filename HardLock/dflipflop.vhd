library IEEE;
use IEEE.std_logic_1164.ALL;
entity dflipflop is
port (D : in std_logic;
	rst :  in std_logic;
	load : in std_logic;
	Clk : in std_logic;
	Q : out std_logic);
end dflipflop;
architecture Behavioral of dflipflop is
begin
	process(Clk)
	begin
		if rst='1' then
			Q <= '0';
		elsif Clk'EVENT AND Clk = '1' AND rst='0' AND load='1' then
			Q <= D;
		end if;
	end process;
end Behavioral;