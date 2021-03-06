----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:36:50 12/13/2020 
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
		enable: in std_logic;
		shot: out std_logic
	);
end Oneshot;
architecture Behavioral of Oneshot is
	signal d1,d2: std_logic;
	signal divided_clk: std_logic;
	
	component ClockDivider100K is
	port(
		clk: in std_logic;
		reset: in std_logic;
		clk_out: out std_logic
	);
	end component;
begin

	ClockDivider: ClockDivider100K 
	port map(
		clk => clk,
		reset => '0',
		clk_out => divided_clk
	);
	process(divided_clk)
	begin
		if rising_edge(divided_clk) then
			d1 <= enable;
			d2 <= d1;
		end if;
	end process;
	shot <= d1 and (not d2);

end Behavioral;

