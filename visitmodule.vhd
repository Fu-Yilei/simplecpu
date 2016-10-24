library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity visitmodule is
    Port ( --T : in STD_LOGIC_VECTOR(3 downto 0);
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
end visitmodule;

architecture Behavioral of visitmodule is
signal tempABUS : std_logic_vector (15 downto 0);
begin
	process (R, W, I, O, RFLAG, PCIN, BADDR)
	begin
			if RFLAG = '1' then
				IOENABLE <= '0';
				IOIN <= '0';
				IOOUT <= '0';
				
				nBLE<='0';
				nBHE<='0';
				nWR<='1';
				nRD<='0';
				nMREQ<='0';
				
				tempABUS<=PCIN;
				IR<=DBUS;
				--ABUS <= "ZZZZZZZZZZZZZZZZ";
				DBUS <= "ZZZZZZZZZZZZZZZZ";
				
			elsif W = '1' and R = '0' then
				IOENABLE <= '0';
				IOIN <= '0';
				IOOUT <= '0';
				
				nBLE<='0';
				nBHE<='1';
				nWR<='0';
				nRD<='1';
				nMREQ<='0';
				tempABUS<=BADDR;
				
				DBUS(7 downto 0)<=ALUIN;--STA
				DBUS(15 downto 8)<="00000000";
				DBUS <= "ZZZZZZZZZZZZZZZZ";
				--ABUS <= "ZZZZZZZZZZZZZZZZ";
			elsif R = '1' and W = '0' then 
				IOENABLE <= '0';
				IOIN <= '0';
				IOOUT <= '0';
				nBLE<='1';
				nBHE<='0';
				nWR<='1';
				nRD<='0';
				nMREQ<='0';
				
				tempABUS <=  BADDR;--LDA
				DATA <= DBUS(15 downto 8);
				DBUS <= "ZZZZZZZZZZZZZZZZ";
				--ABUS <= "ZZZZZZZZZZZZZZZZ";
			elsif  I = '1' and O = '0' then -- IO IN
				IOENABLE <= '1';
				IOOUT <= '0';
				IOIN <= '1';
				IOINDATA <= ALUIN;
				
				nBLE<='1';
				nBHE<='1';
				nWR<='1';
				nRD<='1';
				nMREQ<='1';
				tempABUS <= "ZZZZZZZZZZZZZZZZ";
				DBUS <= "ZZZZZZZZZZZZZZZZ";
				
			elsif O = '1' and I = '0' then  -- IO OUT
				IOENABLE <= '1';
				IOOUT <= '1';
				IOIN <= '0';
				IOINDATA <= "ZZZZZZZZ";
				DATA <= IOOUTDATA;
				
				nBLE<='1';
				nBHE<='1';
				nWR<='1';
				nRD<='1';
				nMREQ<='1';
				tempABUS <= "ZZZZZZZZZZZZZZZZ";
				DBUS <= "ZZZZZZZZZZZZZZZZ";
				
			else
				IOENABLE <= '0';
				IOOUT <= '0';
				IOIN <= '0';
				nBLE<='1';
				nBHE<='1';
				nWR<='1';
				nRD<='1';
				nMREQ<='1';
				tempABUS <="ZZZZZZZZZZZZZZZZ";
				DBUS <="ZZZZZZZZZZZZZZZZ";
				IOINDATA <= "ZZZZZZZZ";
			end if;
	end process;
	ABUS <= tempABUS;
end Behavioral;

