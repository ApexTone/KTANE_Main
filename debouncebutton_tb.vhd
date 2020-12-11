--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:19:52 12/11/2020
-- Design Name:   
-- Module Name:   C:/Users/Predator/Desktop/Learning Resources/DigitalSystem/KTANE_Main/debouncebutton_tb.vhd
-- Project Name:  KTANE_Main
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DebounceButton
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
 
ENTITY debouncebutton_tb IS
END debouncebutton_tb;
 
ARCHITECTURE behavior OF debouncebutton_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DebounceButton
    PORT(
         clk : IN  std_logic;
         inp : IN  std_logic;
         deb_inp : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal inp : std_logic := '0';

 	--Outputs
   signal deb_inp : std_logic;

   -- Clock period definitions
   constant clk_period : time := 50 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DebounceButton PORT MAP (
          clk => clk,
          inp => inp,
          deb_inp => deb_inp
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

		inp <= '1';
		wait for 5 ns;
		inp <= '0';
		wait for 5 ns;
		inp <= '1';
		wait for 5 ns;
		inp <= '0';
		wait for 5 ns;
		inp <= '1';
		wait for 5 ns;
		inp <= '0';
		wait for 5 ns;
		inp <= '1';
		wait for 160 ns;
		inp <= '0';

      wait;
   end process;

END;