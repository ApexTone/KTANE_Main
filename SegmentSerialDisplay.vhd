----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:05:52 12/12/2020 
-- Design Name: 
-- Module Name:    SegmentSerialDisplay - Behavioral 
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

entity SegmentSerialDisplay is
	port(
		clk,reset: in std_logic;
		sel: in std_logic_vector(7 downto 0);
		seg_out: out std_logic_vector(7 downto 0);
		common_out: out std_logic_vector(3 downto 0)
	);
end SegmentSerialDisplay;

architecture Behavioral of SegmentSerialDisplay is
	signal char1_seg,char2_seg,char3_seg,char4_seg: std_logic_vector(7 downto 0);
	
	component CharacterIn7Seg is
	port(
		sel: in std_logic_vector(1 downto 0);
		segment_out: out std_logic_vector(7 downto 0)
	);
	end component;
	component SegmentSerialMultiplexer is
	port(
		clk, reset: in std_logic;
		char1,char2,char3,char4:in std_logic_vector(7 downto 0);--input as segment value to display
		seg_out: out std_logic_vector(7 downto 0);--multiplex scan
		common_out: out std_logic_vector(3 downto 0)--multiplex scan
	);
	end component;
begin
	char1Seg: CharacterIn7Seg
		port map(
			sel => sel(1 downto 0),
			segment_out => char1_seg
		);
	char2Seg: CharacterIn7Seg
		port map(
			sel => sel(3 downto 2),
			segment_out => char2_seg
		);
	char3Seg: CharacterIn7Seg
		port map(
			sel => sel(5 downto 4),
			segment_out => char3_seg
		);
	char4Seg: CharacterIn7Seg
		port map(
			sel => sel(7 downto 6),
			segment_out => char4_seg
		);

	Multiplex: SegmentSerialMultiplexer
		port map(
			clk => clk,
			reset => reset,
			char1 => char1_seg,
			char2 => char2_seg,
			char3 => char3_seg,
			char4 => char4_seg,
			seg_out => seg_out,
			common_out => common_out
		);
end Behavioral;

