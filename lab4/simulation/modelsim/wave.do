view wave 
wave clipboard store
wave create -pattern none -portmode in -language vhdl /lab4/rst 
wave create -pattern none -portmode in -language vhdl /lab4/clk 
wave create -pattern none -portmode in -language vhdl /lab4/shift_in 
wave create -pattern none -portmode out -language vhdl -range 15 0 /lab4/shift_out 
WaveCollapseAll -1
wave clipboard restore
