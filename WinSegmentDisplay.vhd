----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:36:18 12/12/2020 
-- Design Name: 
-- Module Name:    WinSegmentDisplay - Behavioral 
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

entity WinSegmentDisplay is
	port(
		clk,reset: in std_logic;
		seg_out: out std_logic_vector(7 downto 0);
		common_out: out std_logic_vector(3 downto 0)
	);
end WinSegmentDisplay;

architecture Behavioral of WinSegmentDisplay is
	
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
			char1 => "01010100",--w
			char2 => "00001100",--i
			char3 => "11101100",--n
			char4 => "01000001",--!
			seg_out => seg_out,
			common_out => common_out
		);

end Behavioral;

