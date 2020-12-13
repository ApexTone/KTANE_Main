--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:38:22 12/12/2020
-- Design Name:   
-- Module Name:   C:/Users/Predator/Desktop/Learning Resources/DigitalSystem/KTANE_Main/ktane_bigbutton_tb.vhd
-- Project Name:  KTANE_Main
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: KTANE_BigButton
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
 
ENTITY ktane_bigbutton_tb IS
END ktane_bigbutton_tb;
 
ARCHITECTURE behavior OF ktane_bigbutton_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT KTANE_BigButton
    PORT(
         clk : IN  std_logic;
         button : IN  std_logic;
         modeSel : IN  std_logic_vector(1 downto 0);
         sec_in : IN  std_logic_vector(3 downto 0);
         enable : IN  std_logic;
         reset : IN  std_logic;
         strike : OUT  std_logic;
         win : OUT  std_logic;
         winLED : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal button : std_logic := '0';
   signal modeSel : std_logic_vector(1 downto 0) := (others => '0');
   signal sec_in : std_logic_vector(3 downto 0) := (others => '0');
   signal enable : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal strike : std_logic;
   signal win : std_logic;
   signal winLED : std_logic;

   -- Clock period definitions
   constant clk_period : time := 50 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: KTANE_BigButton PORT MAP (
          clk => clk,
          button => button,
          modeSel => modeSel,
          sec_in => sec_in,
          enable => enable,
          reset => reset,
          strike => strike,
          win => win,
          winLED => winLED
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
		
		modeSel <= "00";
		button <= '0';
		sec_in <= "1000";
		reset <= '1';
		wait for 50 ns;
		reset <= '0';
		enable <= '1';
		wait for 50 ns;
		button <= '1';
		wait for 200 ns;
		button <= '0';
		sec_in <= "1001";
		wait for 50 ns;
		button <= '1';
		wait for 200 ns;
		button <= '0';
		wait for 500 ns;
		
		modeSel <= "11";
		button <= '0';
		enable <= '0';
		reset <= '1';
		wait for 50 ns;
		reset <= '0';
		enable <= '1';
		wait for 50 ns;
		button <= '1';
		wait for 200 ns;
		button <= '0';
		wait for 50 ns;
		button <= '1';
		wait for 200 ns;
		button <= '0';
		wait for 50 ns;
		button <= '1';
		wait for 600 ns;
		button <= '0';
		
		

      wait;
   end process;

END;
