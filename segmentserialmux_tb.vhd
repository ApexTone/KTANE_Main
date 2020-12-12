--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:09:32 12/12/2020
-- Design Name:   
-- Module Name:   C:/Users/Predator/Desktop/Learning Resources/DigitalSystem/KTANE_Main/segmentserialmux_tb.vhd
-- Project Name:  KTANE_Main
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SegmentSerialMultiplexer
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
 
ENTITY segmentserialmux_tb IS
END segmentserialmux_tb;
 
ARCHITECTURE behavior OF segmentserialmux_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SegmentSerialMultiplexer
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         char1 : IN  std_logic_vector(7 downto 0);
         char2 : IN  std_logic_vector(7 downto 0);
         char3 : IN  std_logic_vector(7 downto 0);
         char4 : IN  std_logic_vector(7 downto 0);
         seg_out : OUT  std_logic_vector(7 downto 0);
         common_out : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal char1 : std_logic_vector(7 downto 0) := (others => '0');
   signal char2 : std_logic_vector(7 downto 0) := (others => '0');
   signal char3 : std_logic_vector(7 downto 0) := (others => '0');
   signal char4 : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal seg_out : std_logic_vector(7 downto 0);
   signal common_out : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 50 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SegmentSerialMultiplexer PORT MAP (
          clk => clk,
          reset => reset,
          char1 => char1,
          char2 => char2,
          char3 => char3,
          char4 => char4,
          seg_out => seg_out,
          common_out => common_out
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
		char1 <= "10101010";
		char2 <= "11111110";
		char3 <= "00000001";
		char4 <= "11110000";
		wait for 10 ns;
		reset <= '0';

      wait;
   end process;

END;
