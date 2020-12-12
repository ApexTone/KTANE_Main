----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:36:31 12/12/2020 
-- Design Name: 
-- Module Name:    LoseSegmentDisplay - Behavioral 
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

entity LoseSegmentDisplay is
	port(
		clk,reset: in std_logic;
		seg_out: out std_logic_vector(7 downto 0);
		common_out: out std_logic_vector(3 downto 0)
	);
end LoseSegmentDisplay;

architecture Behavioral of LoseSegmentDisplay is

	component SegmentSerialMultiplexer is
		port(
			clk, reset: in std_logic;
			char1,char2,char3,char4:in std_logic_vector(7 downto 0);--input as segment value to display
			seg_out: out std_logic_vector(7 downto 0);--multiplex scan
			common_out: out std_logic_vector(3 downto 0)--multiplex scan
		);
	end component;
begin
	Segment: SegmentSerialMultiplexer
		port map(
			clk => clk,
			reset => reset,
			char1 => "00011100",--L
			char2 => "11111100",--O
			char3 => "10110110",--S
			char4 => "10011110",--E
			seg_out => seg_out,
			common_out => common_out
		);


end Behavioral;

