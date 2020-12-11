--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:40:19 12/11/2020
-- Design Name:   
-- Module Name:   C:/Users/Predator/Desktop/Learning Resources/DigitalSystem/KTANE_Main/winchecker_tb.vhd
-- Project Name:  KTANE_Main
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: WinChecker
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY winchecker_tb IS
END winchecker_tb;
 
ARCHITECTURE behavior OF winchecker_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT WinChecker
    PORT(
         win : IN  std_logic_vector(4 downto 0);
         win_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal win : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal win_out : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: WinChecker PORT MAP (
          win => win,
          win_out => win_out
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
      win <= "00000";
		wait for 10 ns;
		win <= "10010";
		wait for 10 ns;
		win <= "11110";
		wait for 10 ns;
		win <= "11111";
		wait for 10 ns;
		win <= "00011";
      wait;
   end process;

END;
