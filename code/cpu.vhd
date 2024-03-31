library ieee;
use ieee.std_logic_1164.all;

--  Defines a design entity, without any ports.
entity cpu is
	port(
		clk_h: in std_logic;
		rst_h: in std_logic;
		sig_h: out std_logic);
end entity cpu;

architecture behaviour of cpu is
	signal sig_dh : std_logic;
	signal sig_qh : std_logic;
begin

	seq_proc : process(clk_h, rst_h)
	begin
		if (rst_h = '1') then
			sig_qh <= '0';
		elsif (rising_edge(clk_h)) then
			sig_qh <= sig_dh;
		end if;
	end process seq_proc;

	sig_h <= sig_qh;

end architecture behaviour;
