LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY visitwave IS
END visitwave;
 
ARCHITECTURE behavior OF visitwave IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT visitmodule
    PORT(
         nRD : OUT  std_logic;
         nWR : OUT  std_logic;
         nBHE : OUT  std_logic;
         nBLE : OUT  std_logic;
         nMREQ : OUT  std_logic;
         DBUS : INOUT  std_logic_vector(15 downto 0);
         ABUS : OUT  std_logic_vector(15 downto 0);
         IOENABLE : OUT  std_logic;
         IOIN : OUT  std_logic;
         IOOUT : OUT  std_logic;
         IOINDATA : OUT  std_logic_vector(7 downto 0);
         IOOUTDATA : IN  std_logic_vector(7 downto 0);
         ALUIN : IN  std_logic_vector(7 downto 0);
         RFLAG : IN  std_logic;
         BADDR : IN  std_logic_vector(15 downto 0);
         PCIN : IN  std_logic_vector(15 downto 0);
         R : IN  std_logic;
         W : IN  std_logic;
         I : IN  std_logic;
         O : IN  std_logic;
         DATA : OUT  std_logic_vector(7 downto 0);
         IR : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal IOOUTDATA : std_logic_vector(7 downto 0) := (others => '0');
   signal ALUIN : std_logic_vector(7 downto 0) := (others => '0');
   signal RFLAG : std_logic := '0';
   signal BADDR : std_logic_vector(15 downto 0) := (others => '0');
   signal PCIN : std_logic_vector(15 downto 0) := (others => '0');
   signal R : std_logic := '0';
   signal W : std_logic := '0';
   signal I : std_logic := '0';
   signal O : std_logic := '0';

	--BiDirs
   signal DBUS : std_logic_vector(15 downto 0);

 	--Outputs
   signal nRD : std_logic;
   signal nWR : std_logic;
   signal nBHE : std_logic;
   signal nBLE : std_logic;
   signal nMREQ : std_logic;
   signal ABUS : std_logic_vector(15 downto 0);
   signal IOENABLE : std_logic;
   signal IOIN : std_logic;
   signal IOOUT : std_logic;
   signal IOINDATA : std_logic_vector(7 downto 0);
   signal DATA : std_logic_vector(7 downto 0);
   signal IR : std_logic_vector(15 downto 0);

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: visitmodule PORT MAP (
          nRD => nRD,
          nWR => nWR,
          nBHE => nBHE,
          nBLE => nBLE,
          nMREQ => nMREQ,
          DBUS => DBUS,
          ABUS => ABUS,
          IOENABLE => IOENABLE,
          IOIN => IOIN,
          IOOUT => IOOUT,
          IOINDATA => IOINDATA,
          IOOUTDATA => IOOUTDATA,
          ALUIN => ALUIN,
          RFLAG => RFLAG,
          BADDR => BADDR,
          PCIN => PCIN,
          R => R,
          W => W,
          I => I,
          O => O,
          DATA => DATA,
          IR => IR
        );



   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		RFLAG <= '1';
		DBUS <= "0000000000000111";
		wait for 100 ns;
		RFLAG <= '0';
		R <= '1';
		DBUS <= "1100110000110011";
		wait for 100 ns;
		R <= '0';
		W <= '1';
		ALUIN <= "00101000";
      wait;
   end process;

END;
