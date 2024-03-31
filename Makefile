
.PHONY: all apt help compile analysis elaborate run
all: analysis elaborate run

apt:
	apt install ghdl

help:
	g++ --version
	ghdl -v

compile:
	g++ -c code/test.cpp -o objects/test.o

analysis:
	#ghdl -a --std=08 --work=work code/mem.vhd
	ghdl -a --std=08 --work=tb --workdir=lib -Wbinding -Wlibrary -v code/cpu.vhd
	ghdl -a --std=08 --work=tb --workdir=lib code/por.vhd
	ghdl -a --std=08 --work=tb --workdir=lib code/clk_gen.vhd
	ghdl -a --std=08 --work=tb --workdir=lib code/tb_timer.vhd
	ghdl -a --std=08 --work=tb --workdir=lib code/tb_top.vhd

elaborate:
	ghdl -e --std=08 --work=tb --workdir=lib tb_top

run:
	ghdl -r --std=08 --work=tb --workdir=lib tb_top
