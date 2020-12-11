----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:00:51 12/09/2020 
-- Design Name: 
-- Module Name:    KTANE_Main - Behavioral 
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
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity KTANE_Main is
	port(
		clk: in std_logic;
		start, reset, toggleTimerSerial: in std_logic;
		win, strike: in std_logic_vector(4 downto 0);
		
		segment_out: out std_logic_vector(7 downto 0);
		segment_common: out std_logic_vector(3 downto 0);
		strikeLED: out std_logic_vector(1 downto 0);
		randomMode: out std_logic_vector(1 downto 0);-- 2 x n pins
		resetModule: out std_logic_vector(4 downto 0);--1 x 5 pins
		sec2_bigButton: out std_logic_vector(3 downto 0)
		
	);
end KTANE_Main;

architecture Behavioral of KTANE_Main is
	constant startState: std_logic_vector(3 downto 0) := "0001";
	constant gameState: std_logic_vector(3 downto 0) := "0010";
	constant winState: std_logic_vector(3 downto 0) := "0100";
	constant lossState: std_logic_vector(3 downto 0) := "1000";

	signal currentState: std_logic_vector(3 downto 0);
	signal debouncedReset,debouncedStart,debouncedToggle: std_logic;
	signal segmentMode, timeout, isWin, isLoss: std_logic := '0';
	signal dividedClk: std_logic := '0';
	signal strikeCount: std_logic_vector(1 downto 0);--if >= "11" end game

	component DebounceButton is
		port(
			clk: in std_logic;
			inp: in std_logic;
			deb_inp: out std_logic
		);
	end component;
	component SegmentDisplay is
		port(
			clk,reset: in std_logic;
			seg_out: out std_logic_vector(7 downto 0);
			common_out: out std_logic_vector(3 downto 0);
			timeout: out std_logic
		);
	end component;
	component StrikeCounter is
		port(
			strike: in std_logic_vector(4 downto 0);
			reset: in std_logic;
			count_out: out std_logic_vector(1 downto 0)
		);
	end component;
	component WinChecker is
		port(
			win: in std_logic_vector(4 downto 0);
			win_out: out std_logic
		);
	end component;
begin
	StartDebounce: DebounceButton--use with FSM
		port map(
			clk => clk,
			inp => start,
			deb_inp => debouncedStart
		);
	ResetDebounce: DebounceButton--use with FSM
		port map(
			clk => clk,
			inp => reset,
			deb_inp => debouncedReset
		);
	ToggleDebounce: DebounceButton
		port map(
			clk => clk,
			inp => toggleTimerSerial,
			deb_inp => debouncedToggle
		);
		
	Segment: SegmentDisplay -- PRODUCE WARNING Xst:2677 - Node <Segment/Timer/tc> of sequential type is unconnected in block <KTANE_Main>.
		port map(
			clk => clk,
			reset => debouncedReset,
			seg_out => segment_out,
			common_out => segment_common,
			timeout => timeout
		);
		
	StrikeResult: StrikeCounter
		port map(
			strike => strike,
			reset => debouncedReset,
			count_out => strikeCount
		);
	
	CheckWin: WinChecker--use with FSM
		port map(
			win => win,
			win_out => isWin
		);
	
	--FSM
	process(clk, debouncedReset, debouncedStart)
	begin
		if debouncedReset = '1' then
			currentState <= startState;
		else
			if rising_edge(clk) then
				case currentState is
					when startState =>
					--NSL
						if(debouncedStart = '1') then
							currentState <= gameState;
						else
							state <= startState;
						end if;
					--OFL
				
					when gameState =>
						if (debouncedReset = '1') then
							state <= startState;
						end if;
				
					when winState =>
				
					when lossState =>
				
					when others =>
						currentState <= startState;
				end case;
			end if;
		end if;
	end process;
	
	
	--should this be in FSM?
	resetModule <= (others => '1') when debouncedReset = '1' else
						(others => '0');	

	--controlling strike LEDs
	with strikeCount select strikeLED <=
		"00" when "00",
		"01" when "01",
		"11" when "10",
		"11" when others;
	--control FSM: Game State
	isLoss <= 	'1' when strikeCount>="11" or timeout='1' else
					'0';
	

end Behavioral;

