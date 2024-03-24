library ieee;
use ieee.std_logic_1164.all;

entity clk_gen is
  port(clk: out std_logic);
end entity clk_gen;

architecture clk_gen_behaviour of clk_gen
is
  constant clk_period : time := 10 ns;
begin
  -- Clock process definition
  clk_process: process
  begin
    clk <= '0';
    wait for clk_period/2;
    clk <= '1';
    wait for clk_period/2;
  end process;
end architecture clk_gen_behaviour;
