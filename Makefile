
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
	ghdl -a --std=08 --work=work code/dut.vhd
	ghdl -a --std=08 --work=tb code/clk_gen.vhd
	ghdl -a --std=08 --work=tb code/tb_top.vhd

elaborate:
	ghdl -e --std=08 --work=tb tb_top

run:
	ghdl -r --std=08 --work=tb tb_top
