use std.env.all;

entity tb_timer is
end entity tb_timer;

architecture tb_timer_behaviour of tb_timer is
	constant a1 : time := 10 ns;
	constant a2 : time := 1 us;
	constant a3 : time := 1 ms;
begin
	test_proc: process
	begin
		wait for a3;
		wait for a2;
		wait for a1;
		std.env.finish;
	end process;
end architecture tb_timer_behaviour;
