----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:15:07 12/10/2020 
-- Design Name: 
-- Module Name:    SegmentDisplay - Behavioral 
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

entity SegmentDisplay is
	port(
		ce: in std_logic;
		clk,reset: in std_logic;
		seg_out: out std_logic_vector(7 downto 0);
		common_out: out std_logic_vector(3 downto 0);
		sec2_bcd: out std_logic_vector(3 downto 0);
		timeout: out std_logic
	);
end SegmentDisplay;

architecture Behavioral of SegmentDisplay is
	signal min_out,sec1_out,sec2_out: std_logic_vector(3 downto 0);
	signal min_seg,sec1_seg,sec2_seg: std_logic_vector(7 downto 0);
	
	signal tmp: std_logic_vector(7 downto 0);
	
	component CountdownTimer_130 is
		port(
			ce: std_logic;
			clk, reset: in std_logic;
			min_out, sec1_out, sec2_out: out std_logic_vector(3 downto 0);
			timeout: out std_logic
		);
	end component;
	component BCDto7Seg is
		port(
			bcd: in std_logic_vector(3 downto 0);
			segments: out std_logic_vector(7 downto 0)
		);
	end component;
	component SegmentTimerMultiplexer is
		port(
			clk, reset: in std_logic;
			min,sec1,sec2:in std_logic_vector(7 downto 0);--input as segment value to display
			seg_out: out std_logic_vector(7 downto 0);--multiplex scan
			common_out: out std_logic_vector(3 downto 0)--multiplex scan
		);
	end component;
begin
	Timer: CountdownTimer_130 
		port map(
			ce => ce,
			clk => clk,
			reset => reset,
			min_out => min_out,
			sec1_out => sec1_out,
			sec2_out => sec2_out,
			timeout => timeout
		);
	
	MinSegment: BCDto7Seg
		port map(
			bcd => min_out,
			segments => min_seg
		);
	Sec1Segment: BCDto7Seg
		port map(
			bcd => sec1_out,
			segments => sec1_seg
		);
	Sec2Segment: BCDto7Seg
		port map(
			bcd => sec2_out,
			segments => sec2_seg
		);
		
	sec2_bcd <= sec2_out;
	
	tmp <= min_seg(7 downto 1) & '1';
	Multiplex: SegmentTimerMultiplexer
		port map(
			clk => clk,
			reset => reset,
			min => tmp,
			sec1 => sec1_seg,
			sec2 => sec2_seg,
			seg_out => seg_out,
			common_out => common_out
		);

end Behavioral;

