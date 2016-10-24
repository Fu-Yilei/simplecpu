library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity cpu is
    Port ( rst : in  STD_LOGIC;
           clkin : in  STD_LOGIC;
			  

		     --T : out STD_LOGIC_VECTOR (3 downto 0);
			  --IR : out STD_LOGIC_VECTOR (15 downto 0);
			  --r0 : out STD_LOGIC_VECTOR(7 downto 0);
			  --r1 : out STD_LOGIC_VECTOR(7 downto 0);
			  --r2 : out STD_LOGIC_VECTOR(7 downto 0);
			  --r3 : out STD_LOGIC_VECTOR(7 downto 0);
			  --r4 : out STD_LOGIC_VECTOR(7 downto 0);
			  --r5 : out STD_LOGIC_VECTOR(7 downto 0);
			  --r6 : out STD_LOGIC_VECTOR(7 downto 0);
			  --r7 : out STD_LOGIC_VECTOR(7 downto 0);
			  --Rflag : out  STD_LOGIC;
           
			  nRD : out  STD_LOGIC;
           nWR : out  STD_LOGIC;
           nBHE : out  STD_LOGIC;
           nBLE : out  STD_LOGIC;
		   nMREQ : out STD_LOGIC;
           DBUS : inout  STD_LOGIC_VECTOR (15 downto 0);
           ABUS : out  STD_LOGIC_VECTOR (15 downto 0);
		   IOENABLE : out STD_LOGIC;
		   IOIN : out STD_LOGIC;
		   IOOUT : out STD_LOGIC;
		   IOINDATA : out STD_LOGIC_VECTOR(7 downto 0);
		   IOOUTDATA : in STD_LOGIC_VECTOR(7 downto 0));
end cpu;

architecture Behavioral of cpu is

 
component clockmodule is
	port(
		clk: in std_logic;
		T: out std_logic_vector(3 downto 0);
		reset: in std_logic);
end component;

component fetchmodule is
	Port ( T: in STD_LOGIC_VECTOR (3 downto 0);
			 RFLAG: out std_logic;
			   PCIN : in  STD_LOGIC_VECTOR (15 downto 0);
			   RST : in  STD_LOGIC;
			   IRIN : in  STD_LOGIC_VECTOR (15 downto 0);
			   PCOUT : out  STD_LOGIC_VECTOR (15 downto 0);
			   IROUT : out  STD_LOGIC_VECTOR (15 downto 0));
end component;
	
component calcmodule is
	Port ( RADDR : in  STD_LOGIC_VECTOR (2 downto 0);
           RUPDATE : in  STD_LOGIC;
           RDATA : in  STD_LOGIC_VECTOR (7 downto 0);
           IR : in  STD_LOGIC_VECTOR (15 downto 0);
           ADDR : out  STD_LOGIC_VECTOR (15 downto 0);
           BADDR : out  STD_LOGIC_VECTOR (15 downto 0);
           ALUOUT : out  STD_LOGIC_VECTOR (7 downto 0);
			  --r0 : out STD_LOGIC_VECTOR(7 downto 0);
			  --r1 : out STD_LOGIC_VECTOR(7 downto 0);
			  --r2 : out STD_LOGIC_VECTOR(7 downto 0);
			  --r3 : out STD_LOGIC_VECTOR(7 downto 0);
			  --r4 : out STD_LOGIC_VECTOR(7 downto 0);
			  --r5 : out STD_LOGIC_VECTOR(7 downto 0);
			  --r6 : out STD_LOGIC_VECTOR(7 downto 0);
			  --r7 : out STD_LOGIC_VECTOR(7 downto 0);
           T : in  STD_LOGIC_VECTOR (3 downto 0));
			  
end component;

component storagemodule is
Port ( 	DATA : in  STD_LOGIC_VECTOR (7 downto 0);
			IR : in  STD_LOGIC_VECTOR (15 downto 0);
			I : out  STD_LOGIC;
			O : out  STD_LOGIC;
			T : in STD_LOGIC_VECTOR (3 downto 0);
			RTEMP16 : out  STD_LOGIC_VECTOR (15 downto 0);
			RTEMP8 : out STD_LOGIC_VECTOR (7 downto 0);
			ALUIN : in STD_LOGIC_VECTOR (7 downto 0);
			ADDRIN : in  STD_LOGIC_VECTOR (15 downto 0);
			R : out  STD_LOGIC;
			W : out  STD_LOGIC);
end component;

component rewritemodule is
	Port ( T : in STD_LOGIC_VECTOR(3 downto 0);
		   PCIN : in STD_LOGIC_VECTOR(15 downto 0);
		   RTEMPIN16 : in  STD_LOGIC_VECTOR (15 downto 0);
           RTEMPIN8 : in  STD_LOGIC_VECTOR (7 downto 0);
           IR : in  STD_LOGIC_VECTOR (15 downto 0);
           PCNEW : out  STD_LOGIC_VECTOR (15 downto 0);
           RADDR : out  STD_LOGIC_VECTOR (2 downto 0);
           RUPDATEOUT : out  STD_LOGIC;
           RDATA : out  STD_LOGIC_VECTOR (7 downto 0));
end component;
	
component visitmodule is
Port (   --T : in STD_LOGIC_VECTOR(3 downto 0);  
			nRD : out  STD_LOGIC;
           nWR : out  STD_LOGIC;
           nBHE : out  STD_LOGIC;
           nBLE : out  STD_LOGIC;
		   nMREQ : out STD_LOGIC;
		   
           DBUS : inout  STD_LOGIC_VECTOR (15 downto 0);
           ABUS : out  STD_LOGIC_VECTOR (15 downto 0);
		   
		   IOENABLE : out STD_LOGIC;
		   IOIN : out STD_LOGIC;
		   IOOUT : out STD_LOGIC;
		   IOINDATA : out STD_LOGIC_VECTOR(7 downto 0);
		   IOOUTDATA : in STD_LOGIC_VECTOR(7 downto 0);
		   
		   ALUIN : in STD_LOGIC_VECTOR(7 downto 0);
           RFLAG : in  STD_LOGIC;
		   BADDR : in STD_LOGIC_VECTOR(15 downto 0);
		   PCIN : in STD_LOGIC_VECTOR(15 downto 0);
		   
           R : in  STD_LOGIC;
           W : in  STD_LOGIC;
           I : in  STD_LOGIC;
           O : in  STD_LOGIC;
		   
           DATA : out  STD_LOGIC_VECTOR (7 downto 0);
           IR : out  STD_LOGIC_VECTOR (15 downto 0));
end component;
signal Times:STD_LOGIC_VECTOR (3 downto 0);
signal tempRADDR : STD_LOGIC_VECTOR (2 downto 0);
signal tempDATA, tempIOINDATA, tempIOOUTDATA, tempRTEMP8, tempALU, tempRDATA : STD_LOGIC_VECTOR (7 downto 0);
signal tempDBUS, tempADDR, tempRTEMP16, tempBADDR, tempPCnew, tempIRin, tempIRtrans, tempPCout: STD_LOGIC_VECTOR (15 downto 0);
signal tIOENABLE, tIOIN, tIOOUT, tnRD, tnWR, tnBHE, tnBLE, tnMREQ, tempRFLAG, tempRUPDATE, INflag, OUTflag, RDflag, WRflag : STD_LOGIC;
begin

	u1 : clockmodule port map(
	clk => clkin,
	reset => rst, 
	T => Times);
	
	u2 : fetchmodule port map(
	T => Times, 
	RFLAG => tempRFLAG, 
	PCIN => tempPCnew, 
	RST=>rst, 
	IRIN => tempIRin, 
	PCOUT => tempPCout, 
	IROUT => tempIRtrans);
	
	u3 : calcmodule port map(
	T => Times, 
	RADDR => tempRADDR, 
	RUPDATE => tempRUPDATE, 
	RDATA => tempRDATA, 
	IR => tempIRtrans,
	ADDR => tempADDR, 
	BADDR => tempBADDR, 
	--r0 => r0,r1 => r1, r2 => r2,r3 => r3,r4 => r4,r5 => r5,r6 => r6,r7 => r7,
	ALUOUT => tempALU);
	
	u4 : storagemodule port map(
	T => Times, 
	IR => tempIRtrans,
	DATA => tempDATA, 
	RTEMP16 => tempRTEMP16, 
	RTEMP8 => tempRTEMP8, 
	ALUIN => tempALU, 
	ADDRIN => tempADDR, 
	I => INflag, 
	O => OUTflag, 
	R => RDflag, 
	W => WRflag);
	
	u5 : rewritemodule port map(
	T => Times, 
	PCIN => tempPCout, 
	RTEMPIN16 => tempRTEMP16, 
	RTEMPIN8 => tempRTEMP8, 
	IR => tempIRtrans, 
	PCNEW => tempPCnew, 
	RADDR => tempRADDR, 
	RDATA => tempRDATA, 
	RUPDATEOUT => tempRUPDATE);
	
	u6 : visitmodule port map(
	--T => times,
	ABUS => ABUS, 
	DBUS => DBUS,
	nRD => nRD, 
	nWR => nWR, 
	nBHE => nBHE, 
	nBLE => nBLE, 
	nMREQ => nMREQ, 
	IOENABLE => IOENABLE, 
	IOIN => IOIN, 
	IOOUT => IOOUT, 
	IOINDATA => IOINDATA, 
	IOOUTDATA => IOOUTDATA, 
	
	ALUIN => tempALU, 
	RFLAG => tempRFLAG, 
	PCIN => tempPCout, 
	BADDR => tempBADDR, 
	R => RDflag, 
	W => WRflag, 
	I => INflag, 
	O => OUTflag, 
	IR => tempIRin,
	DATA => tempDATA);
	

	--T <= Times; 
	--IR <= tempIRtrans;
	--Rflag <= tempRflag;
	
end Behavioral;