LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY cpuwave IS
END cpuwave;
 
ARCHITECTURE behavior OF cpuwave IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT cpu
    PORT(
         rst : IN  std_logic;
         clkin : IN  std_logic;
			
			--T : OUT std_logic_vector(3 downto 0);
			--IR : out STD_LOGIC_VECTOR (15 downto 0);
			--r0, r1, r2, r3, r4, r5, r6, r7 : out  STD_LOGIC_VECTOR (7 downto 0);
			--rflag : out std_logic;
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
         IOOUTDATA : IN  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal rst : std_logic := '0';
   signal clkin : std_logic := '0';
   signal IOOUTDATA : std_logic_vector(7 downto 0) := (others => '0');
	
	--BiDirs
   signal DBUS : std_logic_vector(15 downto 0);

 	--Outputs
	signal ABUS : std_logic_vector(15 downto 0);
   signal nRD : std_logic;
   signal nWR : std_logic;
   signal nBHE : std_logic;
   signal nBLE : std_logic;
   signal nMREQ : std_logic;
   signal IOENABLE : std_logic;
   signal IOIN : std_logic;
   signal IOOUT : std_logic;
   signal IOINDATA : std_logic_vector(7 downto 0);
	--signal Rflag : std_logic;
	--signal T : std_logic_vector(3 downto 0);
	--signal IR : STD_LOGIC_VECTOR (15 downto 0);
	--signal r0, r1, r2, r3, r4, r5, r6, r7 : STD_LOGIC_VECTOR (7 downto 0);
   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: cpu PORT MAP (
		--	 T => T,
		--	 IR => IR,
		--	 Rflag => Rflag,
          rst => rst,
          clkin => clkin,
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
		--	 r0 => r0,r1 => r1, r2 => r2,r3 => r3,r4 => r4,r5 => r5,r6 => r6,r7 => r7,
          IOOUTDATA => IOOUTDATA
        );

   -- Clock process definitions
   clk_process :process
   begin
		clkin <= '0';
		wait for clk_period/2;
		clkin <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 200 ns;	
		rst <= '1';
		wait for 100 ns;
		rst <= '0';
		DBUS <= "0100011111001100";
		wait for 40 ns;
		DBUS <= "0100011000001111";
		wait for 40 ns;
		DBUS <= "0100010111110000";
		wait for 40 ns;
		DBUS <= "0100010010101010";
		wait for 40 ns;
		DBUS <= "0100001100110011";
		wait for 40 ns;
		DBUS <= "0100001001010101";
		wait for 40 ns;
		DBUS <= "0101000100000111";
		wait for 40 ns;
		DBUS <= "0110010011111111";
		wait for 40 ns;
		DBUS <= "0011011000000101";
		wait for 40 ns;
		DBUS <= "0010011000000101";
		wait for 40 ns;
		DBUS <= "0111000000001111";
		wait for 20 ns;
		DBUS <= "0000111111110000";
		wait for 20 ns;
		DBUS <= "1000001100000000";
		wait for 40 ns;
		DBUS <= "1001000000000000";
		wait for 20 ns;
		IOOUTDATA <= "11001100";
		wait for 20 ns;
		DBUS <= "0000000000110011";
		wait for 40 ns;
		DBUS <= "0001001100111111";
      wait;
   end process;

END;
