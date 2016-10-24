--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:59:01 07/18/2016
-- Design Name:   
-- Module Name:   C:/Users/Frank Fu/simplecpu/clockwave.vhd
-- Project Name:  simplecpu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: clockmodule
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
 
ENTITY clockwave IS
END clockwave;
 
ARCHITECTURE behavior OF clockwave IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT clockmodule
    PORT(
         clk : IN  std_logic;
         T : OUT  std_logic_vector(3 downto 0);
         reset : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
	
 	--Outputs
   signal T : std_logic_vector(3 downto 0);
	
   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: clockmodule PORT MAP (
          clk => clk,
          T => T,
          reset => reset
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
		reset <= '1';
		wait for 10 ns;
		reset <= '0';
		wait for 50 ns;
		reset <= '1';
      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
