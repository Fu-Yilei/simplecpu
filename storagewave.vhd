--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:38:48 07/19/2016
-- Design Name:   
-- Module Name:   C:/Users/Frank Fu/simplecpu/storagewave.vhd
-- Project Name:  simplecpu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: storagemodule
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
 
ENTITY storagewave IS
END storagewave;
 
ARCHITECTURE behavior OF storagewave IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT storagemodule
    PORT(
         DATA : IN  std_logic_vector(7 downto 0);
         IR : IN  std_logic_vector(15 downto 0);
         I : OUT  std_logic;
         O : OUT  std_logic;
         T : IN  std_logic_vector(3 downto 0);
         RTEMP16 : OUT  std_logic_vector(15 downto 0);
         RTEMP8 : OUT  std_logic_vector(7 downto 0);
         ALUIN : IN  std_logic_vector(7 downto 0);
         ADDRIN : IN  std_logic_vector(15 downto 0);
         R : OUT  std_logic;
         W : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal DATA : std_logic_vector(7 downto 0) := (others => '0');
   signal IR : std_logic_vector(15 downto 0) := (others => '0');
   signal T : std_logic_vector(3 downto 0) := (others => '0');
   signal ALUIN : std_logic_vector(7 downto 0) := (others => '0');
   signal ADDRIN : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal I : std_logic;
   signal O : std_logic;
   signal RTEMP16 : std_logic_vector(15 downto 0);
   signal RTEMP8 : std_logic_vector(7 downto 0);
   signal R : std_logic;
   signal W : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: storagemodule PORT MAP (
          DATA => DATA,
          IR => IR,
          I => I,
          O => O,
          T => T,
          RTEMP16 => RTEMP16,
          RTEMP8 => RTEMP8,
          ALUIN => ALUIN,
          ADDRIN => ADDRIN,
          R => R,
          W => W
        );

   -- Clock process definitions
   --<clock>_process :process
   --begin
	--	<clock> <= '0';
	--	wait for <clock>_period/2;
	--	<clock> <= '1';
	--	wait for <clock>_period/2;
   --end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		T <= "0010";
		wait for 100 ns;
		T <= "0100";
		IR <= "0011000000000111";--add
		ALUIN <= "11001100";
		wait for 50 ns;
		IR <= "0010011000000111";--sub
		ALUIN <= "00001111";
		wait for 50 ns;
		IR <= "0000000011001100";--jmp
		ADDRIN <= "0000111100001111";
		wait for 50 ns;
		IR <= "0001000100001111";--jz
		ADDRIN <= "1111000011111111";
		wait for 50 ns;
		IR <= "0100000011110000";--mvi
		--ALUIN <= "10101010";
		wait for 50 ns;
		IR <= "0101000100000110";--mov
		ALUIN <= "10101010";
		wait for 50 ns;
		IR <= "0110001001010101";--sta
		wait for 50 ns;
		IR <= "0111001100000000";--lda
		DATA <= "10100101";
		wait for 50 ns;
		IR <= "1000000000000001";--ioin
		DATA <= "10111101";
		wait for 50 ns;
		IR <= "1001000000000010";--oiout
      --wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
