----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:14:10 12/18/2020 
-- Design Name: 
-- Module Name:    ClockDivider5M - Behavioral 
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

entity ClockDivider5M is
	port(
		clk: in std_logic;
		reset: in std_logic;
		clk_out: out std_logic
	);
end ClockDivider5M;

architecture Behavioral of ClockDivider5M is
signal count: integer range 0 to 2500000 := 0;
	signal tmp: std_logic := '0';
begin
	process(clk, reset)
	begin 
		if reset = '1' then
			count <= 0;
			tmp <= '0';
		elsif rising_edge(clk) then
			if count = 2500000 then
				tmp <= not tmp;
				count <= 0;
			else
				count <= count + 1;
			end if;
		end if;
	end process;
	
	clk_out <= tmp;
end Behavioral;

