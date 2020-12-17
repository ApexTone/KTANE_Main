----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:03:32 12/09/2020 
-- Design Name: 
-- Module Name:    CountdownTimer_130 - Behavioral 
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
use IEEE.STD_LOGIC_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CountdownTimer_130 is
	port(
		ce: std_logic;
		clk, reset: in std_logic;
		min_out, sec1_out, sec2_out: out std_logic_vector(3 downto 0);
		timeout: out std_logic
	);
end CountdownTimer_130;
--teste this

architecture Behavioral of CountdownTimer_130 is
	signal min: std_logic_vector(3 downto 0) := "0001";
	signal sec1: std_logic_vector(3 downto 0) := "0011";--MSB is not really used here since value range from 0-5
	signal sec2: std_logic_vector(3 downto 0) := "0000";
	signal tc: std_logic := '0';
	
	signal dividedClk: std_logic;
	
	component ClockDivider20M is
		port(
			clk: in std_logic;
			reset: in std_logic;
			clk_out: out std_logic
		);
	end component;
begin
	ClockDivider: ClockDivider20M
		port map(
			clk => clk,
			reset => reset,
			clk_out => dividedClk
		);

	process(dividedClk, reset, ce)
	begin
		if reset='1' then
			min <= "0001";
			sec1 <= "0011";
			sec2 <= "0000";
			tc <= '0';
		else
			if falling_edge(dividedClk) and ce = '1' then
				if sec2 = "0000" then
					sec2 <= "1001";--reset to 9
					if sec1 = "0000" then
						if min = "0001" then
							sec1 <= "0101";--reset to 5 if min = 1
							min <= "0000";--countdown minute
						else--just like reset but tc <= '0'
							min <= "0001";
							sec1 <= "0011";
							sec2 <= "0000";
							tc <= '0';
						end if;
					else
						sec1 <= sec1-1;--countdown sec1 (ten)
						if ((min="0000") and (sec1="0000") and (sec2="0001")) then
							tc <= '1';
						else
							tc <= '0';
						end if;
					end if;
					
				else
					sec2 <= sec2-1;--countdown sec2 (unit)
					if ((min="0000") and (sec1="0000") and (sec2="0001")) then
							tc <= '1';
						else
							tc <= '0';
						end if;
				end if;
			end if;
		end if;
	end process;
	
	min_out <= min;
	sec1_out <= sec1;
	sec2_out <= sec2;
	timeout <= tc;

end Behavioral;

