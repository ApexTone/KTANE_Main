----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:20:20 12/12/2020 
-- Design Name: 
-- Module Name:    Oneshot - Behavioral 
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

entity Oneshot is
	port(
		clk: in std_logic;
		trigger: in std_logic;
		pulse: out std_logic
	);
end Oneshot;

architecture Behavioral of Oneshot is
	signal d1,d2,d3: std_logic;
begin	
	process(clk)
	begin
		if rising_edge(clk) then --3 clock pulses
			d1 <= trigger;
			d2 <= d1;
			d3 <= d2;
		end if;
	end process;
	pulse <= d1 or d2 or d3;
	

end Behavioral;

