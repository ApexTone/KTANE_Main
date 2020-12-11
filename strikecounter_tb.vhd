--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:24:18 12/11/2020
-- Design Name:   
-- Module Name:   C:/Users/Predator/Desktop/Learning Resources/DigitalSystem/KTANE_Main/strikecounter_tb.vhd
-- Project Name:  KTANE_Main
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: StrikeCounter
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
 
ENTITY strikecounter_tb IS
END strikecounter_tb;
 
ARCHITECTURE behavior OF strikecounter_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT StrikeCounter
    PORT(
         strike : IN  std_logic_vector(4 downto 0);
         reset : IN  std_logic;
         count_out : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal strike : std_logic_vector(4 downto 0) := (others => '0');
   signal reset : std_logic := '0';

 	--Outputs
   signal count_out : std_logic_vector(1 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: StrikeCounter PORT MAP (
          strike => strike,
          reset => reset,
          count_out => count_out
        );

    -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
			strike <= "00000";
			reset <= '1';
			wait for 10 ns;
			reset <= '0';
			wait for 10 ns;
			
			strike <= "00001";
			wait for 50 ns;
			strike <= "00000";
			wait for 50 ns;
			strike <= "11000";
			wait for 50 ns;
			strike <= "00000";
			wait for 50 ns;
			strike <= "10000";
			wait for 50 ns;
			strike <= "00000";
			wait for 50 ns;
			strike <= "00100";
			wait for 50 ns;
			strike <= "00000";

      wait;
   end process;

END;
