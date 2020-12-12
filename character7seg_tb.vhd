--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:20:37 12/12/2020
-- Design Name:   
-- Module Name:   C:/Users/Predator/Desktop/Learning Resources/DigitalSystem/KTANE_Main/character7seg_tb.vhd
-- Project Name:  KTANE_Main
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CharacterIn7Seg
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
 
ENTITY character7seg_tb IS
END character7seg_tb;
 
ARCHITECTURE behavior OF character7seg_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CharacterIn7Seg
    PORT(
         sel : IN  std_logic_vector(1 downto 0);
         segment_out : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal sel : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal segment_out : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CharacterIn7Seg PORT MAP (
          sel => sel,
          segment_out => segment_out
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	


      sel <= "00";
		wait for 10 ns;
		sel <= "01";
		wait for 10 ns;
		sel <= "10";
		wait for 10 ns;
		sel <= "11";
		wait for 10 ns;
		sel <= "01";

      wait;
   end process;

END;
