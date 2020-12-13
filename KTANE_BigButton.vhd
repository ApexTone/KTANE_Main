----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:00:18 12/12/2020 
-- Design Name: 
-- Module Name:    KTANE_BigButton - Behavioral 
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

entity KTANE_BigButton is
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
end KTANE_BigButton;

architecture Behavioral of KTANE_BigButton is
	constant startState: std_logic_vector(4 downto 0) := "00001";
	constant gameState: std_logic_vector(4 downto 0) := "00010";
	constant strike1State: std_logic_vector(4 downto 0) := "00100";
	constant strike2State: std_logic_vector(4 downto 0) := "01000";
	constant winState: std_logic_vector(4 downto 0) := "10000";
	
	signal currentState: std_logic_vector(4 downto 0) := startState;
	signal winCondition: std_logic_vector(3 downto 0) := "0000";
	signal debouncedButton: std_logic := '0';
	
	component DebounceButton is
		port(
			clk: in std_logic;
			inp: in std_logic;
			deb_inp: out std_logic
		);
	end component;

begin
	BigButtonDebounce: DebounceButton
		port map(
			clk => clk,
			inp => button,
			deb_inp => debouncedButton
		);

	with modeSel select winCondition <=
		"1001" when "00",
		"0001" when "01",
		"0010" when "10",
		"0110" when "11",
		"0000" when others;
	
	process(clk,reset,enable)
	begin
		if (reset = '1') then
			currentState <= startState;
			win <= '0';
			strike <= '0';
			winLED <= '0';
		else
			if (rising_edge(clk) and enable='1') then
				case currentState is
					when startState =>
						--NSL
						if(enable = '1') then
							currentState <= gameState;
						else
							currentState <= startState;
						end if;
						--OFL
						win <= '0';
						strike <= '0';
						winLED <= '0';
					when gameState =>
						if reset = '1' then
							currentState <= startState;
						elsif debouncedButton = '1' then
							if sec_in = winCondition then --win/strike logic
								currentState <= winState;
							else
								currentState <= strike1State;
							end if;
						else
							currentState <= gameState;
						end if;
						--OFL
						win <= '0';
						strike <= '0';
						winLED <= '0';
					when strike1State =>
						if reset = '1' then
							currentState <= startState;
						else
							currentState <= strike2State;
						end if;
						strike <= '1';
						win <= '0';
						winLED <= '0';
					when strike2State =>
						if reset = '1' then
							currentState <= startState;
						else
							currentState <= gameState;
						end if;
						strike <= '1';
						win <= '0';
						winLED <= '0';
					when winState =>
						if reset = '1' then
							currentState <= startState;
						else
							currentState <= winState;
						end if;
						win <= '1';
						strike <= '0';
						winLED <= '1';
					when others =>
						currentState <= startState;
						strike <= '0';
						win <= '0';
						winLED <= '0';
				end case;
			end if;
		end if;
	end process;
	


end Behavioral;

