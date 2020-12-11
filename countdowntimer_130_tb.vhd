--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:16:32 12/09/2020
-- Design Name:   
-- Module Name:   C:/Users/Predator/Desktop/Learning Resources/DigitalSystem/KTANE_Main/countdowntimer_130_tb.vhd
-- Project Name:  KTANE_Main
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CountdownTimer_130
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
 
ENTITY countdowntimer_130_tb IS
END countdowntimer_130_tb;
 
ARCHITECTURE behavior OF countdowntimer_130_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CountdownTimer_130
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         min_out : OUT  std_logic_vector(3 downto 0);
         sec1_out : OUT  std_logic_vector(3 downto 0);
         sec2_out : OUT  std_logic_vector(3 downto 0);
         timeout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal min_out : std_logic_vector(3 downto 0);
   signal sec1_out : std_logic_vector(3 downto 0);
   signal sec2_out : std_logic_vector(3 downto 0);
   signal timeout : std_logic;

   -- Clock period definitions
   constant clk_period : time := 50 ns;--20 megahertz
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CountdownTimer_130 PORT MAP (
          clk => clk,
          reset => reset,
          min_out => min_out,
          sec1_out => sec1_out,
          sec2_out => sec2_out,
          timeout => timeout
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

      reset <= '1';
		wait for 10 ns;
		reset <= '0';

      wait;
   end process;

END;
