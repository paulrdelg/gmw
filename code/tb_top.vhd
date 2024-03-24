
use std.env.all;
library ieee;
use ieee.std_logic_1164.all;

--  Defines a design entity, without any ports.
entity tb_top is
end entity tb_top;

architecture tb_top_arch of tb_top is
	component clk_gen is
		port(clk: out std_logic);
	end component clk_gen;
	
	signal clk : std_logic;
begin
	clk_unit : clk_gen port map (
		clk => clk
	);

	test_proc: process
	begin
		wait for 200 ns;
		std.env.finish;
	end process;
end architecture tb_top_arch;
