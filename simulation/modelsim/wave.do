view wave 
wave clipboard store
wave create -pattern none -portmode in -language vhdl /lab3/nrst 
wave create -pattern none -portmode in -language vhdl /lab3/clk 
wave create -pattern none -portmode out -language vhdl /lab3/clk_out 
WaveCollapseAll -1
wave clipboard restore
