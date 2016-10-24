--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:17:07 07/23/2016
-- Design Name:   
-- Module Name:   C:/Xilinx/14.7/ISE_DS/simplecpu/rewritewave.vhd
-- Project Name:  simplecpu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: rewritemodule
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
 
ENTITY rewritewave IS
END rewritewave;
 
ARCHITECTURE behavior OF rewritewave IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT rewritemodule
    PORT(
         T : IN  std_logic_vector(3 downto 0);
         PCIN : IN  std_logic_vector(15 downto 0);
         RTEMPIN16 : IN  std_logic_vector(15 downto 0);
         RTEMPIN8 : IN  std_logic_vector(7 downto 0);
         IR : IN  std_logic_vector(15 downto 0);
         PCNEW : OUT  std_logic_vector(15 downto 0);
         RADDR : OUT  std_logic_vector(2 downto 0);
         RUPDATEOUT : OUT  std_logic;
         RDATA : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal T : std_logic_vector(3 downto 0) := (others => '0');
   signal PCIN : std_logic_vector(15 downto 0) := (others => '0');
   signal RTEMPIN16 : std_logic_vector(15 downto 0) := (others => '0');
   signal RTEMPIN8 : std_logic_vector(7 downto 0) := (others => '0');
   signal IR : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal PCNEW : std_logic_vector(15 downto 0);
   signal RADDR : std_logic_vector(2 downto 0);
   signal RUPDATEOUT : std_logic;
   signal RDATA : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: rewritemodule PORT MAP (
          T => T,
          PCIN => PCIN,
          RTEMPIN16 => RTEMPIN16,
          RTEMPIN8 => RTEMPIN8,
          IR => IR,
          PCNEW => PCNEW,
          RADDR => RADDR,
          RUPDATEOUT => RUPDATEOUT,
          RDATA => RDATA
        );

   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		T <= "1000";
		IR <= "0000000000101011";
		RTEMPIN16 <= "1111111100101011";
		wait for 100 ns;
		IR <= "0100011000001111";
		RTEMPIN8 <= "00001111";
		wait for 100 ns;
		IR <= "0011011000000101";
		RTEMPIN8 <= "11111111";
		wait for 100 ns;
		IR <= "0111000000001111";
		RTEMPIN8 <= "00110011";
      wait;
   end process;

END;
