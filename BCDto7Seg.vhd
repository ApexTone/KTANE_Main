----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:22:39 12/07/2020 
-- Design Name: 
-- Module Name:    BCDto7Seg - Behavioral 
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

entity BCDto7Seg is
	port(
		bcd: in std_logic_vector(3 downto 0);
		segments: out std_logic_vector(7 downto 0)
	);
end BCDto7Seg;

architecture Behavioral of BCDto7Seg is

begin
	--bcd to 7 segment with dot control
	segments <= "11111100" when bcd = "0000" else
					"01100000" when bcd = "0001" else
					"11011010" when bcd = "0010" else
					"11110010" when bcd = "0011" else
					"01100110" when bcd = "0100" else
					"10110110" when bcd = "0101" else
					"10111110" when bcd = "0110" else
					"11100000" when bcd = "0111" else
					"11111110" when bcd = "1000" else
					"11110110" when bcd = "1001" else
					"00000001";
end Behavioral;

