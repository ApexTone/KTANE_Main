----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:44:59 12/09/2020 
-- Design Name: 
-- Module Name:    DebounceButton - Behavioral 
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

entity DebounceButton is
	port(
		clk: in std_logic;
		inp: in std_logic;
		deb_inp: out std_logic
	);
end DebounceButton;

architecture Behavioral of DebounceButton is
	signal d1,d2,d3,d4,d5,d6: std_logic;
	signal divided_clk: std_logic := '0';
	
	component ClockDivider1K is
		port(
			clk: in std_logic;
			reset: in std_logic;
			clk_out: out std_logic
		);
	end component;
begin	
	
	ClockDivider: ClockDivider1K 
		port map(
			clk => clk,
			reset => '0',
			clk_out => divided_clk
		);
	
	process(divided_clk)
	begin
		if rising_edge(divided_clk) then
			d1 <= inp;
			d2 <= d1;
			d3 <= d2;
			d4 <= d3;
			d5 <= d4;
			d6 <= d5;
		end if;
	end process;
	deb_inp <= d1 and d2 and d3 and d4 and d5 and d6;
end Behavioral;

