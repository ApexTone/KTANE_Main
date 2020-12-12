----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:03:23 12/12/2020 
-- Design Name: 
-- Module Name:    SegmentSerialMultiplexer - Behavioral 
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

entity SegmentSerialMultiplexer is
	port(
		clk, reset: in std_logic;
		char1,char2,char3,char4:in std_logic_vector(7 downto 0);--input as segment value to display
		seg_out: out std_logic_vector(7 downto 0);--multiplex scan
		common_out: out std_logic_vector(3 downto 0)--multiplex scan
	);
end SegmentSerialMultiplexer;

architecture Behavioral of SegmentSerialMultiplexer is
	signal count,sel: std_logic_vector(1 downto 0) := "00";
	signal dividedClk: std_logic := '0';
	
	component ClockDivider100K is
		port(
			clk: in std_logic;
			reset: in std_logic;
			clk_out: out std_logic
		);
	end component;
begin
	ClockDivider: ClockDivider100K 
		port map(
			clk => clk,
			reset => reset,
			clk_out => dividedClk
		);

	process(dividedClk,reset)
	begin
		if reset = '1' then
			count <= "00";
		else
			if rising_edge(dividedClk) then
				if count = "11" then
					count <= "00";
				else
					count <= count + 1;
				end if;
			end if;
		end if;
	end process;
	
	with count select
		seg_out <= 	char1 when "00",
						char2 when "01",
						char3 when "10",
						char4 when "11",
						"00000000" when others;
	with count select
		common_out <= 	"1110" when "00",
							"1101" when "01",
							"1011" when "10",
							"0111" when "11",
							"1111" when others;

end Behavioral;

