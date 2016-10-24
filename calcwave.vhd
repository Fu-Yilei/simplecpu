

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 


ENTITY calcwave IS
END calcwave;
 
ARCHITECTURE behavior OF calcwave IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT calcmodule
    PORT(
         RADDR : IN  std_logic_vector(2 downto 0);
         RUPDATE : IN  std_logic;
         RDATA : IN  std_logic_vector(7 downto 0);
         IR : IN  std_logic_vector(15 downto 0);
         ADDR : OUT  std_logic_vector(15 downto 0);
         BADDR : OUT  std_logic_vector(15 downto 0);
         ALUOUT : OUT  std_logic_vector(7 downto 0);
        
         T : IN  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal RADDR : std_logic_vector(2 downto 0) := (others => '0');
   signal RUPDATE : std_logic := '0';
   signal RDATA : std_logic_vector(7 downto 0) := (others => '0');
   signal IR : std_logic_vector(15 downto 0) := (others => '0');
   signal T : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal ADDR : std_logic_vector(15 downto 0);
   signal BADDR : std_logic_vector(15 downto 0);
   signal ALUOUT : std_logic_vector(7 downto 0);


 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: calcmodule PORT MAP (
          RADDR => RADDR,
          RUPDATE => RUPDATE,
          RDATA => RDATA,
          IR => IR,
          ADDR => ADDR,
          BADDR => BADDR,
          ALUOUT => ALUOUT,
			 T=>T
        );

   -- Clock process definitions


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		T <= "0010";
		IR <= "0100011111001100";
		wait for 100 ns;
		IR <= "0100011000001111";
		wait for 100 ns;
		IR <= "0100010100110011";
		wait for 100 ns;
		IR <= "0011011100000110";
		wait for 100 ns;
		IR <= "0010011000000101";
		wait for 100 ns;
		IR <= "0110010000001111";
		wait for 100 ns;
		IR <= "0000000000010011";
		wait for 100 ns;
		IR <= "1000001100000000";
		

      -- insert stimulus here 

      wait;
   end process;

END;
