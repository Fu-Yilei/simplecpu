--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:56:40 07/19/2016
-- Design Name:   
-- Module Name:   C:/Users/Frank Fu/simplecpu/fetchwave.vhd
-- Project Name:  simplecpu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fetchmodule
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
 
ENTITY fetchwave IS
END fetchwave;
 
ARCHITECTURE behavior OF fetchwave IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fetchmodule
    PORT(
         T : IN  std_logic_vector(3 downto 0);
         RFLAG : OUT  std_logic;
         PCIN : IN  std_logic_vector(15 downto 0);
         RST : IN  std_logic;
         IRIN : IN  std_logic_vector(15 downto 0);
         PCOUT : OUT  std_logic_vector(15 downto 0);
         IROUT : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal T : std_logic_vector(3 downto 0) := (others => '0');
   signal PCIN : std_logic_vector(15 downto 0) := (others => '0');
   signal RST : std_logic := '0';
   signal IRIN : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal RFLAG : std_logic;
   signal PCOUT : std_logic_vector(15 downto 0);
   signal IROUT : std_logic_vector(15 downto 0);


BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fetchmodule PORT MAP (
          T => T,
          RFLAG => RFLAG,
          PCIN => PCIN,
          RST => RST,
          IRIN => IRIN,
          PCOUT => PCOUT,
          IROUT => IROUT
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		T <= "1000";
		RST <= '0';
		PCIN <= "0000111100001111";
		wait for 100 ns;
		T <= "0001";
		IRIN <= "1111111100000000";
		
		wait for 100 ns;
		RST <= '1';
		wait for 100 ns;
		RST <= '0';
      wait;
   end process;
END;
