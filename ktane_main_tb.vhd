--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:54:55 12/12/2020
-- Design Name:   
-- Module Name:   C:/Users/Predator/Desktop/Learning Resources/DigitalSystem/KTANE_Main/ktane_main_tb.vhd
-- Project Name:  KTANE_Main
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: KTANE_Main
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
 
ENTITY ktane_main_tb IS
END ktane_main_tb;
 
ARCHITECTURE behavior OF ktane_main_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT KTANE_Main
    PORT(
         clk : IN  std_logic;
         start : IN  std_logic;
         reset : IN  std_logic;
         toggleTimerSerial : IN  std_logic;
         win : IN  std_logic_vector(4 downto 0);
         strike : IN  std_logic_vector(4 downto 0);
         segment_out : OUT  std_logic_vector(7 downto 0);
         segment_common : OUT  std_logic_vector(3 downto 0);
         strikeLED : OUT  std_logic_vector(1 downto 0);
         enableGame : OUT  std_logic_vector(4 downto 0);
         randomMode : OUT  std_logic_vector(7 downto 0);
         resetModule : OUT  std_logic_vector(4 downto 0);
         sec2_bigButton : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal start : std_logic := '0';
   signal reset : std_logic := '0';
   signal toggleTimerSerial : std_logic := '0';
   signal win : std_logic_vector(4 downto 0) := (others => '0');
   signal strike : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal segment_out : std_logic_vector(7 downto 0);
   signal segment_common : std_logic_vector(3 downto 0);
   signal strikeLED : std_logic_vector(1 downto 0);
   signal enableGame : std_logic_vector(4 downto 0);
   signal randomMode : std_logic_vector(7 downto 0);
   signal resetModule : std_logic_vector(4 downto 0);
   signal sec2_bigButton : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: KTANE_Main PORT MAP (
          clk => clk,
          start => start,
          reset => reset,
          toggleTimerSerial => toggleTimerSerial,
          win => win,
          strike => strike,
          segment_out => segment_out,
          segment_common => segment_common,
          strikeLED => strikeLED,
          enableGame => enableGame,
          randomMode => randomMode,
          resetModule => resetModule,
          sec2_bigButton => sec2_bigButton
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

      -- insert stimulus here 

      wait;
   end process;

END;
