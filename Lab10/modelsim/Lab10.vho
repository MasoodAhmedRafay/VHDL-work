-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "03/20/2018 14:50:32"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Lab10 IS
    PORT (
	hexcode : OUT std_logic_vector(6 DOWNTO 0);
	button : IN std_logic;
	reset : IN std_logic;
	\up-down\ : IN std_logic
	);
END Lab10;

-- Design Ports Information
-- hexcode[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hexcode[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hexcode[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hexcode[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hexcode[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hexcode[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hexcode[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reset	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- button	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- up-down	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Lab10 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_hexcode : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_button : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL \ww_up-down\ : std_logic;
SIGNAL \inst|clk_1Hz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \up-down~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|Add0~15\ : std_logic;
SIGNAL \inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|Add0~17\ : std_logic;
SIGNAL \inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|Add0~19\ : std_logic;
SIGNAL \inst|Add0~20_combout\ : std_logic;
SIGNAL \inst|Add0~21\ : std_logic;
SIGNAL \inst|Add0~22_combout\ : std_logic;
SIGNAL \inst|Add0~23\ : std_logic;
SIGNAL \inst|Add0~24_combout\ : std_logic;
SIGNAL \inst|Add0~25\ : std_logic;
SIGNAL \inst|Add0~26_combout\ : std_logic;
SIGNAL \inst|Add0~27\ : std_logic;
SIGNAL \inst|Add0~28_combout\ : std_logic;
SIGNAL \inst|Add0~29\ : std_logic;
SIGNAL \inst|Add0~30_combout\ : std_logic;
SIGNAL \inst|Add0~31\ : std_logic;
SIGNAL \inst|Add0~32_combout\ : std_logic;
SIGNAL \inst|Add0~33\ : std_logic;
SIGNAL \inst|Add0~34_combout\ : std_logic;
SIGNAL \inst|Add0~35\ : std_logic;
SIGNAL \inst|Add0~36_combout\ : std_logic;
SIGNAL \inst|Add0~37\ : std_logic;
SIGNAL \inst|Add0~38_combout\ : std_logic;
SIGNAL \inst|Add0~39\ : std_logic;
SIGNAL \inst|Add0~40_combout\ : std_logic;
SIGNAL \inst|Add0~41\ : std_logic;
SIGNAL \inst|Add0~42_combout\ : std_logic;
SIGNAL \inst|Add0~43\ : std_logic;
SIGNAL \inst|Add0~44_combout\ : std_logic;
SIGNAL \inst|Add0~45\ : std_logic;
SIGNAL \inst|Add0~46_combout\ : std_logic;
SIGNAL \inst|Add0~47\ : std_logic;
SIGNAL \inst|Add0~48_combout\ : std_logic;
SIGNAL \inst|Add0~49\ : std_logic;
SIGNAL \inst|Add0~50_combout\ : std_logic;
SIGNAL \inst|clk_1Hz~regout\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst|Equal1~1_combout\ : std_logic;
SIGNAL \inst|Equal1~2_combout\ : std_logic;
SIGNAL \inst|Equal1~3_combout\ : std_logic;
SIGNAL \inst|Equal1~4_combout\ : std_logic;
SIGNAL \inst|Equal1~5_combout\ : std_logic;
SIGNAL \inst|Equal1~6_combout\ : std_logic;
SIGNAL \inst|clk_1Hz~0_combout\ : std_logic;
SIGNAL \inst|clk_1Hz~1_combout\ : std_logic;
SIGNAL \inst|Equal1~7_combout\ : std_logic;
SIGNAL \inst|count50~0_combout\ : std_logic;
SIGNAL \inst|count50~1_combout\ : std_logic;
SIGNAL \up-down~combout\ : std_logic;
SIGNAL \inst|clk_1Hz~clkctrl_outclk\ : std_logic;
SIGNAL \up-down~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|COUNT[0]~0_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \inst1|counts[0]~0_combout\ : std_logic;
SIGNAL \button~combout\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|COUNT[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|Add0~1_combout\ : std_logic;
SIGNAL \inst1|COUNT[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|Add0~3_combout\ : std_logic;
SIGNAL \inst1|counts[3]~feeder_combout\ : std_logic;
SIGNAL \inst4|Mux0~0_combout\ : std_logic;
SIGNAL \inst4|Mux1~0_combout\ : std_logic;
SIGNAL \inst4|Mux2~0_combout\ : std_logic;
SIGNAL \inst4|Mux3~0_combout\ : std_logic;
SIGNAL \inst4|Mux4~0_combout\ : std_logic;
SIGNAL \inst4|Mux5~0_combout\ : std_logic;
SIGNAL \inst4|Mux6~0_combout\ : std_logic;
SIGNAL \inst1|counts\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|COUNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|count50\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \inst4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_reset~combout\ : std_logic;

BEGIN

hexcode <= ww_hexcode;
ww_button <= button;
ww_reset <= reset;
\ww_up-down\ <= \up-down\;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|clk_1Hz~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst|clk_1Hz~regout\);

\up-down~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \up-down~combout\);
\inst4|ALT_INV_Mux0~0_combout\ <= NOT \inst4|Mux0~0_combout\;
\ALT_INV_reset~combout\ <= NOT \reset~combout\;

-- Location: LCCOMB_X63_Y15_N6
\inst|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \inst|count50\(0) $ (VCC)
-- \inst|Add0~1\ = CARRY(\inst|count50\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count50\(0),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: LCCOMB_X63_Y15_N8
\inst|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|count50\(1) & (!\inst|Add0~1\)) # (!\inst|count50\(1) & ((\inst|Add0~1\) # (GND)))
-- \inst|Add0~3\ = CARRY((!\inst|Add0~1\) # (!\inst|count50\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count50\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: LCCOMB_X63_Y15_N10
\inst|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|count50\(2) & (\inst|Add0~3\ $ (GND))) # (!\inst|count50\(2) & (!\inst|Add0~3\ & VCC))
-- \inst|Add0~5\ = CARRY((\inst|count50\(2) & !\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count50\(2),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: LCCOMB_X63_Y15_N12
\inst|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|count50\(3) & (!\inst|Add0~5\)) # (!\inst|count50\(3) & ((\inst|Add0~5\) # (GND)))
-- \inst|Add0~7\ = CARRY((!\inst|Add0~5\) # (!\inst|count50\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count50\(3),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: LCCOMB_X63_Y15_N14
\inst|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|count50\(4) & (\inst|Add0~7\ $ (GND))) # (!\inst|count50\(4) & (!\inst|Add0~7\ & VCC))
-- \inst|Add0~9\ = CARRY((\inst|count50\(4) & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count50\(4),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: LCCOMB_X63_Y15_N16
\inst|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|count50\(5) & (!\inst|Add0~9\)) # (!\inst|count50\(5) & ((\inst|Add0~9\) # (GND)))
-- \inst|Add0~11\ = CARRY((!\inst|Add0~9\) # (!\inst|count50\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count50\(5),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: LCCOMB_X63_Y15_N18
\inst|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = (\inst|count50\(6) & (\inst|Add0~11\ $ (GND))) # (!\inst|count50\(6) & (!\inst|Add0~11\ & VCC))
-- \inst|Add0~13\ = CARRY((\inst|count50\(6) & !\inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count50\(6),
	datad => VCC,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: LCCOMB_X63_Y15_N20
\inst|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = (\inst|count50\(7) & (!\inst|Add0~13\)) # (!\inst|count50\(7) & ((\inst|Add0~13\) # (GND)))
-- \inst|Add0~15\ = CARRY((!\inst|Add0~13\) # (!\inst|count50\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count50\(7),
	datad => VCC,
	cin => \inst|Add0~13\,
	combout => \inst|Add0~14_combout\,
	cout => \inst|Add0~15\);

-- Location: LCCOMB_X63_Y15_N22
\inst|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~16_combout\ = (\inst|count50\(8) & (\inst|Add0~15\ $ (GND))) # (!\inst|count50\(8) & (!\inst|Add0~15\ & VCC))
-- \inst|Add0~17\ = CARRY((\inst|count50\(8) & !\inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count50\(8),
	datad => VCC,
	cin => \inst|Add0~15\,
	combout => \inst|Add0~16_combout\,
	cout => \inst|Add0~17\);

-- Location: LCCOMB_X63_Y15_N24
\inst|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~18_combout\ = (\inst|count50\(9) & (!\inst|Add0~17\)) # (!\inst|count50\(9) & ((\inst|Add0~17\) # (GND)))
-- \inst|Add0~19\ = CARRY((!\inst|Add0~17\) # (!\inst|count50\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count50\(9),
	datad => VCC,
	cin => \inst|Add0~17\,
	combout => \inst|Add0~18_combout\,
	cout => \inst|Add0~19\);

-- Location: LCCOMB_X63_Y15_N26
\inst|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~20_combout\ = (\inst|count50\(10) & (\inst|Add0~19\ $ (GND))) # (!\inst|count50\(10) & (!\inst|Add0~19\ & VCC))
-- \inst|Add0~21\ = CARRY((\inst|count50\(10) & !\inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count50\(10),
	datad => VCC,
	cin => \inst|Add0~19\,
	combout => \inst|Add0~20_combout\,
	cout => \inst|Add0~21\);

-- Location: LCCOMB_X63_Y15_N28
\inst|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~22_combout\ = (\inst|count50\(11) & (!\inst|Add0~21\)) # (!\inst|count50\(11) & ((\inst|Add0~21\) # (GND)))
-- \inst|Add0~23\ = CARRY((!\inst|Add0~21\) # (!\inst|count50\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count50\(11),
	datad => VCC,
	cin => \inst|Add0~21\,
	combout => \inst|Add0~22_combout\,
	cout => \inst|Add0~23\);

-- Location: LCCOMB_X63_Y15_N30
\inst|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~24_combout\ = (\inst|count50\(12) & (\inst|Add0~23\ $ (GND))) # (!\inst|count50\(12) & (!\inst|Add0~23\ & VCC))
-- \inst|Add0~25\ = CARRY((\inst|count50\(12) & !\inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count50\(12),
	datad => VCC,
	cin => \inst|Add0~23\,
	combout => \inst|Add0~24_combout\,
	cout => \inst|Add0~25\);

-- Location: LCCOMB_X63_Y14_N0
\inst|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~26_combout\ = (\inst|count50\(13) & (!\inst|Add0~25\)) # (!\inst|count50\(13) & ((\inst|Add0~25\) # (GND)))
-- \inst|Add0~27\ = CARRY((!\inst|Add0~25\) # (!\inst|count50\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count50\(13),
	datad => VCC,
	cin => \inst|Add0~25\,
	combout => \inst|Add0~26_combout\,
	cout => \inst|Add0~27\);

-- Location: LCCOMB_X63_Y14_N2
\inst|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~28_combout\ = (\inst|count50\(14) & (\inst|Add0~27\ $ (GND))) # (!\inst|count50\(14) & (!\inst|Add0~27\ & VCC))
-- \inst|Add0~29\ = CARRY((\inst|count50\(14) & !\inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count50\(14),
	datad => VCC,
	cin => \inst|Add0~27\,
	combout => \inst|Add0~28_combout\,
	cout => \inst|Add0~29\);

-- Location: LCCOMB_X63_Y14_N4
\inst|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~30_combout\ = (\inst|count50\(15) & (!\inst|Add0~29\)) # (!\inst|count50\(15) & ((\inst|Add0~29\) # (GND)))
-- \inst|Add0~31\ = CARRY((!\inst|Add0~29\) # (!\inst|count50\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count50\(15),
	datad => VCC,
	cin => \inst|Add0~29\,
	combout => \inst|Add0~30_combout\,
	cout => \inst|Add0~31\);

-- Location: LCCOMB_X63_Y14_N6
\inst|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~32_combout\ = (\inst|count50\(16) & (\inst|Add0~31\ $ (GND))) # (!\inst|count50\(16) & (!\inst|Add0~31\ & VCC))
-- \inst|Add0~33\ = CARRY((\inst|count50\(16) & !\inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count50\(16),
	datad => VCC,
	cin => \inst|Add0~31\,
	combout => \inst|Add0~32_combout\,
	cout => \inst|Add0~33\);

-- Location: LCCOMB_X63_Y14_N8
\inst|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~34_combout\ = (\inst|count50\(17) & (!\inst|Add0~33\)) # (!\inst|count50\(17) & ((\inst|Add0~33\) # (GND)))
-- \inst|Add0~35\ = CARRY((!\inst|Add0~33\) # (!\inst|count50\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count50\(17),
	datad => VCC,
	cin => \inst|Add0~33\,
	combout => \inst|Add0~34_combout\,
	cout => \inst|Add0~35\);

-- Location: LCCOMB_X63_Y14_N10
\inst|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~36_combout\ = (\inst|count50\(18) & (\inst|Add0~35\ $ (GND))) # (!\inst|count50\(18) & (!\inst|Add0~35\ & VCC))
-- \inst|Add0~37\ = CARRY((\inst|count50\(18) & !\inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count50\(18),
	datad => VCC,
	cin => \inst|Add0~35\,
	combout => \inst|Add0~36_combout\,
	cout => \inst|Add0~37\);

-- Location: LCCOMB_X63_Y14_N12
\inst|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~38_combout\ = (\inst|count50\(19) & (!\inst|Add0~37\)) # (!\inst|count50\(19) & ((\inst|Add0~37\) # (GND)))
-- \inst|Add0~39\ = CARRY((!\inst|Add0~37\) # (!\inst|count50\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count50\(19),
	datad => VCC,
	cin => \inst|Add0~37\,
	combout => \inst|Add0~38_combout\,
	cout => \inst|Add0~39\);

-- Location: LCCOMB_X63_Y14_N14
\inst|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~40_combout\ = (\inst|count50\(20) & (\inst|Add0~39\ $ (GND))) # (!\inst|count50\(20) & (!\inst|Add0~39\ & VCC))
-- \inst|Add0~41\ = CARRY((\inst|count50\(20) & !\inst|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count50\(20),
	datad => VCC,
	cin => \inst|Add0~39\,
	combout => \inst|Add0~40_combout\,
	cout => \inst|Add0~41\);

-- Location: LCCOMB_X63_Y14_N16
\inst|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~42_combout\ = (\inst|count50\(21) & (!\inst|Add0~41\)) # (!\inst|count50\(21) & ((\inst|Add0~41\) # (GND)))
-- \inst|Add0~43\ = CARRY((!\inst|Add0~41\) # (!\inst|count50\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count50\(21),
	datad => VCC,
	cin => \inst|Add0~41\,
	combout => \inst|Add0~42_combout\,
	cout => \inst|Add0~43\);

-- Location: LCCOMB_X63_Y14_N18
\inst|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~44_combout\ = (\inst|count50\(22) & (\inst|Add0~43\ $ (GND))) # (!\inst|count50\(22) & (!\inst|Add0~43\ & VCC))
-- \inst|Add0~45\ = CARRY((\inst|count50\(22) & !\inst|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count50\(22),
	datad => VCC,
	cin => \inst|Add0~43\,
	combout => \inst|Add0~44_combout\,
	cout => \inst|Add0~45\);

-- Location: LCCOMB_X63_Y14_N20
\inst|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~46_combout\ = (\inst|count50\(23) & (!\inst|Add0~45\)) # (!\inst|count50\(23) & ((\inst|Add0~45\) # (GND)))
-- \inst|Add0~47\ = CARRY((!\inst|Add0~45\) # (!\inst|count50\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count50\(23),
	datad => VCC,
	cin => \inst|Add0~45\,
	combout => \inst|Add0~46_combout\,
	cout => \inst|Add0~47\);

-- Location: LCCOMB_X63_Y14_N22
\inst|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~48_combout\ = (\inst|count50\(24) & (\inst|Add0~47\ $ (GND))) # (!\inst|count50\(24) & (!\inst|Add0~47\ & VCC))
-- \inst|Add0~49\ = CARRY((\inst|count50\(24) & !\inst|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count50\(24),
	datad => VCC,
	cin => \inst|Add0~47\,
	combout => \inst|Add0~48_combout\,
	cout => \inst|Add0~49\);

-- Location: LCCOMB_X63_Y14_N24
\inst|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~50_combout\ = \inst|Add0~49\ $ (\inst|count50\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|count50\(25),
	cin => \inst|Add0~49\,
	combout => \inst|Add0~50_combout\);

-- Location: LCFF_X64_Y14_N25
\inst|clk_1Hz\ : cycloneii_lcell_ff
PORT MAP (
	clk => \up-down~clkctrl_outclk\,
	datain => \inst|clk_1Hz~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|clk_1Hz~regout\);

-- Location: LCFF_X63_Y15_N7
\inst|count50[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \up-down~clkctrl_outclk\,
	datain => \inst|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count50\(0));

-- Location: LCFF_X63_Y14_N23
\inst|count50[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \up-down~clkctrl_outclk\,
	datain => \inst|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count50\(24));

-- Location: LCFF_X63_Y14_N21
\inst|count50[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \up-down~clkctrl_outclk\,
	datain => \inst|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count50\(23));

-- Location: LCFF_X63_Y14_N19
\inst|count50[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \up-down~clkctrl_outclk\,
	datain => \inst|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count50\(22));

-- Location: LCFF_X63_Y14_N17
\inst|count50[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \up-down~clkctrl_outclk\,
	datain => \inst|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count50\(21));

-- Location: LCFF_X63_Y14_N15
\inst|count50[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \up-down~clkctrl_outclk\,
	datain => \inst|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count50\(20));

-- Location: LCFF_X63_Y14_N13
\inst|count50[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \up-down~clkctrl_outclk\,
	datain => \inst|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count50\(19));

-- Location: LCFF_X63_Y14_N11
\inst|count50[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \up-down~clkctrl_outclk\,
	datain => \inst|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count50\(18));

-- Location: LCFF_X63_Y14_N9
\inst|count50[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \up-down~clkctrl_outclk\,
	datain => \inst|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count50\(17));

-- Location: LCFF_X63_Y14_N7
\inst|count50[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \up-down~clkctrl_outclk\,
	datain => \inst|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count50\(16));

-- Location: LCFF_X63_Y14_N5
\inst|count50[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \up-down~clkctrl_outclk\,
	datain => \inst|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count50\(15));

-- Location: LCFF_X63_Y14_N3
\inst|count50[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \up-down~clkctrl_outclk\,
	datain => \inst|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count50\(14));

-- Location: LCFF_X63_Y14_N1
\inst|count50[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \up-down~clkctrl_outclk\,
	datain => \inst|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count50\(13));

-- Location: LCFF_X63_Y15_N31
\inst|count50[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \up-down~clkctrl_outclk\,
	datain => \inst|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count50\(12));

-- Location: LCFF_X63_Y15_N29
\inst|count50[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \up-down~clkctrl_outclk\,
	datain => \inst|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count50\(11));

-- Location: LCFF_X63_Y15_N27
\inst|count50[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \up-down~clkctrl_outclk\,
	datain => \inst|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count50\(10));

-- Location: LCFF_X63_Y15_N25
\inst|count50[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \up-down~clkctrl_outclk\,
	datain => \inst|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count50\(9));

-- Location: LCFF_X63_Y15_N23
\inst|count50[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \up-down~clkctrl_outclk\,
	datain => \inst|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count50\(8));

-- Location: LCFF_X63_Y15_N21
\inst|count50[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \up-down~clkctrl_outclk\,
	datain => \inst|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count50\(7));

-- Location: LCFF_X63_Y15_N19
\inst|count50[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \up-down~clkctrl_outclk\,
	datain => \inst|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count50\(6));

-- Location: LCFF_X63_Y15_N17
\inst|count50[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \up-down~clkctrl_outclk\,
	datain => \inst|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count50\(5));

-- Location: LCFF_X63_Y15_N15
\inst|count50[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \up-down~clkctrl_outclk\,
	datain => \inst|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count50\(4));

-- Location: LCFF_X64_Y14_N19
\inst|count50[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \up-down~clkctrl_outclk\,
	datain => \inst|count50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count50\(3));

-- Location: LCFF_X63_Y15_N11
\inst|count50[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \up-down~clkctrl_outclk\,
	datain => \inst|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count50\(2));

-- Location: LCFF_X64_Y14_N1
\inst|count50[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \up-down~clkctrl_outclk\,
	datain => \inst|count50~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count50\(1));

-- Location: LCCOMB_X63_Y15_N4
\inst|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = (!\inst|Add0~10_combout\ & (!\inst|Add0~12_combout\ & (!\inst|Add0~14_combout\ & !\inst|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~10_combout\,
	datab => \inst|Add0~12_combout\,
	datac => \inst|Add0~14_combout\,
	datad => \inst|Add0~8_combout\,
	combout => \inst|Equal1~0_combout\);

-- Location: LCCOMB_X64_Y14_N4
\inst|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal1~1_combout\ = (!\inst|Add0~36_combout\ & (\inst|Equal1~0_combout\ & (!\inst|Add0~32_combout\ & !\inst|Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~36_combout\,
	datab => \inst|Equal1~0_combout\,
	datac => \inst|Add0~32_combout\,
	datad => \inst|Add0~34_combout\,
	combout => \inst|Equal1~1_combout\);

-- Location: LCCOMB_X63_Y15_N2
\inst|Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal1~2_combout\ = (!\inst|Add0~18_combout\ & (!\inst|Add0~20_combout\ & (!\inst|Add0~16_combout\ & !\inst|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~18_combout\,
	datab => \inst|Add0~20_combout\,
	datac => \inst|Add0~16_combout\,
	datad => \inst|Add0~22_combout\,
	combout => \inst|Equal1~2_combout\);

-- Location: LCCOMB_X64_Y14_N14
\inst|Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal1~3_combout\ = (!\inst|Add0~40_combout\ & (!\inst|Add0~42_combout\ & (\inst|Equal1~2_combout\ & !\inst|Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~40_combout\,
	datab => \inst|Add0~42_combout\,
	datac => \inst|Equal1~2_combout\,
	datad => \inst|Add0~38_combout\,
	combout => \inst|Equal1~3_combout\);

-- Location: LCFF_X63_Y14_N25
\inst|count50[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \up-down~clkctrl_outclk\,
	datain => \inst|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count50\(25));

-- Location: LCCOMB_X63_Y14_N30
\inst|Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal1~4_combout\ = (!\inst|Add0~26_combout\ & (!\inst|Add0~30_combout\ & (!\inst|Add0~24_combout\ & !\inst|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~26_combout\,
	datab => \inst|Add0~30_combout\,
	datac => \inst|Add0~24_combout\,
	datad => \inst|Add0~28_combout\,
	combout => \inst|Equal1~4_combout\);

-- Location: LCCOMB_X63_Y14_N28
\inst|Equal1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal1~5_combout\ = (!\inst|Add0~46_combout\ & (!\inst|Add0~44_combout\ & (!\inst|Add0~50_combout\ & \inst|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~46_combout\,
	datab => \inst|Add0~44_combout\,
	datac => \inst|Add0~50_combout\,
	datad => \inst|Equal1~4_combout\,
	combout => \inst|Equal1~5_combout\);

-- Location: LCCOMB_X64_Y14_N28
\inst|Equal1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal1~6_combout\ = (!\inst|Add0~48_combout\ & (\inst|Equal1~1_combout\ & (\inst|Equal1~3_combout\ & \inst|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~48_combout\,
	datab => \inst|Equal1~1_combout\,
	datac => \inst|Equal1~3_combout\,
	datad => \inst|Equal1~5_combout\,
	combout => \inst|Equal1~6_combout\);

-- Location: LCCOMB_X64_Y14_N22
\inst|clk_1Hz~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|clk_1Hz~0_combout\ = (\inst|Add0~2_combout\ & ((\inst|clk_1Hz~regout\) # ((\inst|Add0~4_combout\ & !\inst|Add0~6_combout\)))) # (!\inst|Add0~2_combout\ & ((\inst|Add0~4_combout\ & (\inst|clk_1Hz~regout\)) # (!\inst|Add0~4_combout\ & 
-- ((\inst|Add0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_1Hz~regout\,
	datab => \inst|Add0~2_combout\,
	datac => \inst|Add0~4_combout\,
	datad => \inst|Add0~6_combout\,
	combout => \inst|clk_1Hz~0_combout\);

-- Location: LCCOMB_X64_Y14_N24
\inst|clk_1Hz~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|clk_1Hz~1_combout\ = (\inst|Equal1~6_combout\ & ((\inst|clk_1Hz~0_combout\) # ((!\inst|Add0~0_combout\ & \inst|clk_1Hz~regout\)))) # (!\inst|Equal1~6_combout\ & (((\inst|clk_1Hz~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~0_combout\,
	datab => \inst|clk_1Hz~0_combout\,
	datac => \inst|clk_1Hz~regout\,
	datad => \inst|Equal1~6_combout\,
	combout => \inst|clk_1Hz~1_combout\);

-- Location: LCCOMB_X64_Y14_N16
\inst|Equal1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal1~7_combout\ = (!\inst|Add0~0_combout\ & (\inst|Add0~6_combout\ & (!\inst|Add0~4_combout\ & \inst|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~0_combout\,
	datab => \inst|Add0~6_combout\,
	datac => \inst|Add0~4_combout\,
	datad => \inst|Add0~2_combout\,
	combout => \inst|Equal1~7_combout\);

-- Location: LCCOMB_X64_Y14_N18
\inst|count50~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|count50~0_combout\ = (\inst|Add0~6_combout\ & ((!\inst|Equal1~6_combout\) # (!\inst|Equal1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~6_combout\,
	datac => \inst|Equal1~7_combout\,
	datad => \inst|Equal1~6_combout\,
	combout => \inst|count50~0_combout\);

-- Location: LCCOMB_X64_Y14_N0
\inst|count50~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|count50~1_combout\ = (\inst|Add0~2_combout\ & ((!\inst|Equal1~6_combout\) # (!\inst|Equal1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~2_combout\,
	datac => \inst|Equal1~7_combout\,
	datad => \inst|Equal1~6_combout\,
	combout => \inst|count50~1_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\up-down~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => \ww_up-down\,
	combout => \up-down~combout\);

-- Location: CLKCTRL_G4
\inst|clk_1Hz~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|clk_1Hz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|clk_1Hz~clkctrl_outclk\);

-- Location: CLKCTRL_G2
\up-down~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \up-down~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \up-down~clkctrl_outclk\);

-- Location: LCCOMB_X28_Y1_N26
\inst1|COUNT[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|COUNT[0]~0_combout\ = !\inst1|COUNT\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|COUNT\(0),
	combout => \inst1|COUNT[0]~0_combout\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: LCFF_X28_Y1_N27
\inst1|COUNT[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_1Hz~clkctrl_outclk\,
	datain => \inst1|COUNT[0]~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|COUNT\(0));

-- Location: LCCOMB_X28_Y1_N8
\inst1|counts[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|counts[0]~0_combout\ = !\inst1|COUNT\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|COUNT\(0),
	combout => \inst1|counts[0]~0_combout\);

-- Location: LCFF_X28_Y1_N9
\inst1|counts[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_1Hz~clkctrl_outclk\,
	datain => \inst1|counts[0]~0_combout\,
	ena => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|counts\(0));

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\button~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_button,
	combout => \button~combout\);

-- Location: LCCOMB_X28_Y1_N30
\inst1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = \button~combout\ $ (\inst1|COUNT\(1) $ (!\inst1|COUNT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button~combout\,
	datac => \inst1|COUNT\(1),
	datad => \inst1|COUNT\(0),
	combout => \inst1|Add0~0_combout\);

-- Location: LCCOMB_X28_Y1_N4
\inst1|COUNT[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|COUNT[1]~feeder_combout\ = \inst1|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Add0~0_combout\,
	combout => \inst1|COUNT[1]~feeder_combout\);

-- Location: LCFF_X28_Y1_N5
\inst1|COUNT[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_1Hz~clkctrl_outclk\,
	datain => \inst1|COUNT[1]~feeder_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|COUNT\(1));

-- Location: LCCOMB_X28_Y1_N0
\inst1|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~1_combout\ = \inst1|COUNT\(2) $ (((\button~combout\ & (\inst1|COUNT\(1) & \inst1|COUNT\(0))) # (!\button~combout\ & (!\inst1|COUNT\(1) & !\inst1|COUNT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|COUNT\(2),
	datab => \button~combout\,
	datac => \inst1|COUNT\(1),
	datad => \inst1|COUNT\(0),
	combout => \inst1|Add0~1_combout\);

-- Location: LCFF_X28_Y1_N1
\inst1|counts[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_1Hz~clkctrl_outclk\,
	datain => \inst1|Add0~1_combout\,
	ena => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|counts\(2));

-- Location: LCFF_X28_Y1_N31
\inst1|counts[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_1Hz~clkctrl_outclk\,
	datain => \inst1|Add0~0_combout\,
	ena => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|counts\(1));

-- Location: LCFF_X28_Y1_N11
\inst1|COUNT[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_1Hz~clkctrl_outclk\,
	datain => \inst1|Add0~3_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|COUNT\(3));

-- Location: LCCOMB_X28_Y1_N14
\inst1|COUNT[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|COUNT[2]~feeder_combout\ = \inst1|Add0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Add0~1_combout\,
	combout => \inst1|COUNT[2]~feeder_combout\);

-- Location: LCFF_X28_Y1_N15
\inst1|COUNT[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_1Hz~clkctrl_outclk\,
	datain => \inst1|COUNT[2]~feeder_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|COUNT\(2));

-- Location: LCCOMB_X28_Y1_N12
\inst1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_combout\ = (\button~combout\ & (\inst1|COUNT\(2) & (\inst1|COUNT\(1) & \inst1|COUNT\(0)))) # (!\button~combout\ & ((\inst1|COUNT\(2)) # ((\inst1|COUNT\(1)) # (\inst1|COUNT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button~combout\,
	datab => \inst1|COUNT\(2),
	datac => \inst1|COUNT\(1),
	datad => \inst1|COUNT\(0),
	combout => \inst1|Add0~2_combout\);

-- Location: LCCOMB_X28_Y1_N10
\inst1|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~3_combout\ = \button~combout\ $ (\inst1|COUNT\(3) $ (!\inst1|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button~combout\,
	datac => \inst1|COUNT\(3),
	datad => \inst1|Add0~2_combout\,
	combout => \inst1|Add0~3_combout\);

-- Location: LCCOMB_X28_Y1_N6
\inst1|counts[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|counts[3]~feeder_combout\ = \inst1|Add0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Add0~3_combout\,
	combout => \inst1|counts[3]~feeder_combout\);

-- Location: LCFF_X28_Y1_N7
\inst1|counts[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_1Hz~clkctrl_outclk\,
	datain => \inst1|counts[3]~feeder_combout\,
	ena => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|counts\(3));

-- Location: LCCOMB_X28_Y1_N16
\inst4|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux0~0_combout\ = (\inst1|counts\(0) & ((\inst1|counts\(3)) # (\inst1|counts\(2) $ (\inst1|counts\(1))))) # (!\inst1|counts\(0) & ((\inst1|counts\(1)) # (\inst1|counts\(2) $ (\inst1|counts\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counts\(0),
	datab => \inst1|counts\(2),
	datac => \inst1|counts\(1),
	datad => \inst1|counts\(3),
	combout => \inst4|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y1_N2
\inst4|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux1~0_combout\ = (\inst1|counts\(0) & (\inst1|counts\(3) $ (((\inst1|counts\(1)) # (!\inst1|counts\(2)))))) # (!\inst1|counts\(0) & (!\inst1|counts\(2) & (\inst1|counts\(1) & !\inst1|counts\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counts\(0),
	datab => \inst1|counts\(2),
	datac => \inst1|counts\(1),
	datad => \inst1|counts\(3),
	combout => \inst4|Mux1~0_combout\);

-- Location: LCCOMB_X28_Y1_N28
\inst4|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux2~0_combout\ = (\inst1|counts\(1) & (\inst1|counts\(0) & ((!\inst1|counts\(3))))) # (!\inst1|counts\(1) & ((\inst1|counts\(2) & ((!\inst1|counts\(3)))) # (!\inst1|counts\(2) & (\inst1|counts\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counts\(0),
	datab => \inst1|counts\(2),
	datac => \inst1|counts\(1),
	datad => \inst1|counts\(3),
	combout => \inst4|Mux2~0_combout\);

-- Location: LCCOMB_X28_Y1_N22
\inst4|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux3~0_combout\ = (\inst1|counts\(1) & ((\inst1|counts\(0) & (\inst1|counts\(2))) # (!\inst1|counts\(0) & (!\inst1|counts\(2) & \inst1|counts\(3))))) # (!\inst1|counts\(1) & (!\inst1|counts\(3) & (\inst1|counts\(0) $ (\inst1|counts\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counts\(0),
	datab => \inst1|counts\(2),
	datac => \inst1|counts\(1),
	datad => \inst1|counts\(3),
	combout => \inst4|Mux3~0_combout\);

-- Location: LCCOMB_X28_Y1_N20
\inst4|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux4~0_combout\ = (\inst1|counts\(2) & (\inst1|counts\(3) & ((\inst1|counts\(1)) # (!\inst1|counts\(0))))) # (!\inst1|counts\(2) & (!\inst1|counts\(0) & (\inst1|counts\(1) & !\inst1|counts\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counts\(0),
	datab => \inst1|counts\(2),
	datac => \inst1|counts\(1),
	datad => \inst1|counts\(3),
	combout => \inst4|Mux4~0_combout\);

-- Location: LCCOMB_X28_Y1_N18
\inst4|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux5~0_combout\ = (\inst1|counts\(1) & ((\inst1|counts\(0) & ((\inst1|counts\(3)))) # (!\inst1|counts\(0) & (\inst1|counts\(2))))) # (!\inst1|counts\(1) & (\inst1|counts\(2) & (\inst1|counts\(0) $ (\inst1|counts\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counts\(0),
	datab => \inst1|counts\(2),
	datac => \inst1|counts\(1),
	datad => \inst1|counts\(3),
	combout => \inst4|Mux5~0_combout\);

-- Location: LCCOMB_X28_Y1_N24
\inst4|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux6~0_combout\ = (\inst1|counts\(2) & (!\inst1|counts\(1) & (\inst1|counts\(0) $ (!\inst1|counts\(3))))) # (!\inst1|counts\(2) & (\inst1|counts\(0) & (\inst1|counts\(1) $ (!\inst1|counts\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counts\(0),
	datab => \inst1|counts\(2),
	datac => \inst1|counts\(1),
	datad => \inst1|counts\(3),
	combout => \inst4|Mux6~0_combout\);

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hexcode[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hexcode(6));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hexcode[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hexcode(5));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hexcode[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hexcode(4));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hexcode[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hexcode(3));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hexcode[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hexcode(2));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hexcode[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hexcode(1));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hexcode[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hexcode(0));
END structure;


