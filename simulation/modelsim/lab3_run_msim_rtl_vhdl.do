transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Masood Ahmed Rafay/Desktop/Embedded Systems/2nd Semester/VHDL/New folder/lab3/Vhdl3.vhd}

