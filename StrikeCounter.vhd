----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:39:59 12/11/2020 
-- Design Name: 
-- Module Name:    StrikeCounter - Behavioral 
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

entity StrikeCounter is
	port(
		strike: in std_logic_vector(4 downto 0);
		reset: in std_logic;
		count_out: out std_logic_vector(1 downto 0)--might need bigger size and use comparator instead of exact "11" value to end game
	);
end StrikeCounter;

architecture Behavioral of StrikeCounter is
	signal isStrike: std_logic;
	signal count: std_logic_vector(1 downto 0) := "00";
	
begin
	isStrike <= strike(0) or strike(1) or strike(2) or strike(3) or strike(4);
	
	process(isStrike,reset)
	begin
		if reset = '1' then
			count <= (others=>'0');
		elsif rising_edge(isStrike) then
			if count = "11" then
				count <= (others => '0');
			else
				count <= count + 1;
			end if;
		end if;
	end process;
	count_out <= count;

end Behavioral;

