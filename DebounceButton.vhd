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
	signal d1,d2,d3: std_logic;
begin	
	process(clk)
	begin
		if rising_edge(clk) then --3 clock pulses debounce: MAY NEED LESS DELAY
			d1 <= inp;
			d2 <= d1;
		end if;
	end process;
	deb_inp <= d1 and d2;
end Behavioral;

