use std.env.all;
library ieee;
use ieee.std_logic_1164.all;

entity por is
	port(rst_h: out std_logic);
end entity por;

architecture por_behaviour of por is
	constant a1 : time := 250 ns;
	constant active : time := 25 ns;
begin
	-- Clock process definition
	clk_process: process
	begin
		rst_h <= '0';
		wait for a1;
		rst_h <= '1';
		wait for active;
		rst_h <= '0';
	end process;
end architecture por_behaviour;
