library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;


entity add1bit is
 Port (cin: in STD_LOGIC;
		 a : in STD_LOGIC;
		 b : in STD_LOGIC;
		 cout : out STD_LOGIC;
		 sum : out STD_LOGIC);
end add1bit;

architecture Behavior of add1bit is
	signal int_sum: STD_LOGIC_VECTOR(1 DOWNTO 0); -- This is an internal signal, which does not go to any port
	
begin
	int_sum <= ('0' & a) + b + cin;
	sum <= int_sum(0);
	cout <= int_sum(1);
end Behavior;