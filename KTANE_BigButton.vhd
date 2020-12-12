----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:00:18 12/12/2020 
-- Design Name: 
-- Module Name:    KTANE_BigButton - Behavioral 
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

entity KTANE_BigButton is
	port(
		button: in std_logic;
		modeSel: in std_logic_vector(1 downto 0);
		sec_in: in std_logic_vector(3 downto 0);
		enable, reset: in std_logic;
		strike: out std_logic;
		win: out std_logic;
		winLED: out std_logic
	);
end KTANE_BigButton;

architecture Behavioral of KTANE_BigButton is

begin
	process(reset)
	begin
		if (reset = '1') then
			win <= '0';
			winLED <= '0';
		elsif (enable = '1' and reset = '0') then
			winLED <= '1';
		end if;
	end process;

end Behavioral;

