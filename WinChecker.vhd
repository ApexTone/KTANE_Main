----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:31:56 12/11/2020 
-- Design Name: 
-- Module Name:    WinChecker - Behavioral 
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

entity WinChecker is
	port(
		win: in std_logic_vector(4 downto 0);
		win_out: out std_logic
	);
end WinChecker;

architecture Behavioral of WinChecker is
begin	
	win_out <= win(0) and win(1) and win(2) and win(3) and win(4);
end Behavioral;

