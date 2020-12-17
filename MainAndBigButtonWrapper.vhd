----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:04:24 12/12/2020 
-- Design Name: 
-- Module Name:    MainAndBigButtonWrapper - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MainAndBigButtonWrapper is
	port(
			clk: in std_logic;
			start, reset, toggleTimerSerial: in std_logic;
			win, strike: in std_logic_vector(3 downto 0);-- 4 + 1 pins
		
			button: in std_logic;
		
			segment_out: out std_logic_vector(7 downto 0);
			segment_common: out std_logic_vector(3 downto 0);
			strikeLED: out std_logic_vector(1 downto 0);
			enableGame: out std_logic_vector(3 downto 0);--1 x 4 pins + 1
			randomMode: out std_logic_vector(5 downto 0);-- 2 x 3 pins + 2
			resetModule: out std_logic_vector(3 downto 0);--1 x 4 pins + 1
			
			winLED: out std_logic;
			buzzer: out std_logic
			
	);
end MainAndBigButtonWrapper;

architecture Behavioral of MainAndBigButtonWrapper is
	signal enableBigButton: std_logic := '0';
	signal enableOthers: std_logic_vector(3 downto 0);
	signal randomBigButton: std_logic_vector(1 downto 0);
	signal randomOthers: std_logic_vector(5 downto 0);
	signal resetBigButton: std_logic;
	signal resetOthers: std_logic_vector(3 downto 0);
	signal sec2Signal: std_logic_vector(3 downto 0);
	
	signal winBigButton, strikeBigButton: std_logic;
	
	signal enableBuffer, resetModuleBuffer: std_logic_vector(4 downto 0);
	signal randomModeBuffer: std_logic_vector(7 downto 0);
	
	signal allWin, allStrike: std_logic_vector(4 downto 0) := "00000";
	
	component KTANE_Main is
		port(
			clk: in std_logic;
			start, reset, toggleTimerSerial: in std_logic;
			win, strike: in std_logic_vector(4 downto 0);
		
			segment_out: out std_logic_vector(7 downto 0);
			segment_common: out std_logic_vector(3 downto 0);
			strikeLED: out std_logic_vector(1 downto 0);
			enableGame: out std_logic_vector(4 downto 0);
			randomMode: out std_logic_vector(7 downto 0);-- 2 x 4 pins
			resetModule: out std_logic_vector(4 downto 0);--1 x 5 pins
			sec2_bigButton: out std_logic_vector(3 downto 0);
			buzzer: out std_logic
		);
	end component;
	component KTANE_BigButton is
		port(
			clk: in std_logic;
			button: in std_logic;
			modeSel: in std_logic_vector(1 downto 0);
			sec_in: in std_logic_vector(3 downto 0);
			enable, reset: in std_logic;
		
			strike: out std_logic;--make pulse
			win: out std_logic;
			winLED: out std_logic
		);
	end component;
begin
	BigButton: KTANE_BigButton
		port map(
			clk => clk,
			button => button,
			modeSel => randomBigButton,
			sec_in => sec2Signal,
			enable => enableBigButton,
			reset => resetBigButton,
		
			strike => strikeBigButton,
			win => winBigButton,
			winLED => winLED
		);
		
	Main: KTANE_Main
		port map(
			clk => clk,
			start => start,
			reset => reset,
			toggleTimerSerial => toggleTimerSerial,
			win => allWin,
			strike => allStrike,
			
			segment_out => segment_out,
			segment_common => segment_common,
			strikeLED => strikeLED,
			enableGame => enableBuffer,
			randomMode => randomModeBuffer,
			resetModule => resetModuleBuffer,
			sec2_bigButton => sec2Signal,
			buzzer => buzzer
		);
		
	allWin <= winBigButton & win;
	allStrike <= strikeBigButton & strike;
		
	enableGame <= enableBuffer(4 downto 1);
	randomMode <= randomModeBuffer(7 downto 2);
	resetModule <= resetModuleBuffer(4 downto 1);
		
	enableBigButton <= enableBuffer(0);
	randomBigButton <= randomModeBuffer(1 downto 0);
	resetBigButton <= resetModuleBuffer(0);
	
	

end Behavioral;

