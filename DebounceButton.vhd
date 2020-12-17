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
	signal d1,d2,d3,d4,d5,d6,d7,d8,d9,d10: std_logic;

begin	
	

	process(clk)
	begin
		if rising_edge(clk) then
			d1 <= inp;
			d2 <= d1;
			d3 <= d2;
			d4 <= d3;
			d5 <= d4;
			d6 <= d5;
			d7 <= d6;
			d8 <= d7;
			d9 <= d8;
			d10 <= d9;
		end if;
	end process;
	deb_inp <= d1 and d2 and d3 and d4 and d5 and d6 and d7 and d8 and d9 and d10;
end Behavioral;

