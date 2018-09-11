transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/altera/13.0sp1/Clock.vhd}
vcom -93 -work work {C:/altera/13.0sp1/Vhdl1.vhd}
vcom -93 -work work {C:/altera/13.0sp1/counter.vhd}

