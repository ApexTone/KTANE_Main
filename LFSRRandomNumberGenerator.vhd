----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:18:48 12/12/2020 
-- Design Name: 
-- Module Name:    LFSRRandom - Behavioral 
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

--generate pseudo random number
entity LFSRRandom is
	port(
		clk: in std_logic;
		enable, reset: in std_logic;
		Q: out std_logic_vector(7 downto 0)
	);
end LFSRRandom;

architecture Behavioral of LFSRRandom is
	signal Qt: std_logic_vector(7 downto 0) := x"01";
begin
	process(clk, reset)
		variable tmp: std_logic := '0';
	begin
		if (reset = '1') then
			Qt <= x"01";
		elsif rising_edge(clk) then
			if enable = '1' then
				tmp := Qt(4) xor Qt(3) xor Qt(2) xor Qt(0);
				Qt <= tmp & Qt(7 downto 1);
			end if;
		end if;
	end process;

	Q <= Qt;
end Behavioral;

