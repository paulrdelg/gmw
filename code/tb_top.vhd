
library ieee;
use ieee.std_logic_1164.all;


--  Defines a design entity, without any ports.
entity tb_top is
end entity tb_top;

architecture tb_top_arch of tb_top is

	component tb_timer is
	end component tb_timer;

	component clk_gen is
		port(clk: out std_logic);
	end component clk_gen;

	signal clk : std_logic;

	component por is
		port(rst_h: out std_logic);
	end component por;

	signal rst : std_logic;

	component cpu
		port(
			clk_h: in std_logic;
			rst_h: in std_logic;
			sig_h: out std_logic);
	end component cpu;

	signal sig : std_logic;

begin

	timer_unit : tb_timer;

	clk_unit : clk_gen
		port map (clk => clk);

	por_unit : por
		port map (rst_h => rst);

	test_unit : cpu
		port map (
			clk_h => clk,
			rst_h => rst,
			sig_h => sig);

end architecture tb_top_arch;
