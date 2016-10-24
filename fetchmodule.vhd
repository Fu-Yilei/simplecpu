library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity fetchmodule is
    Port (
			  T: in STD_LOGIC_VECTOR (3 downto 0);
			  RFLAG: out std_logic;
           PCIN : in  STD_LOGIC_VECTOR (15 downto 0);
           RST : in  STD_LOGIC;
           IRIN : in  STD_LOGIC_VECTOR (15 downto 0);
           PCOUT : out  STD_LOGIC_VECTOR (15 downto 0);
           IROUT : out  STD_LOGIC_VECTOR (15 downto 0));
end fetchmodule;

architecture Behavioral of fetchmodule is
	signal temp_pc: std_logic_vector(15 downto 0);
begin
	process (PCIN, RST, IRIN, T)
	begin
		--temp_pc <= PCIN;
		if RST = '1' then
			temp_pc <= "0000000000000000";
			PCOUT <= "0000000000000000";
			IROUT <= "0000000000000000";
			RFLAG <= '0';
		elsif T = "0001" and RST = '0' then 
			RFLAG <= '1';
			PCOUT <= temp_pc;
			IROUT <= IRIN;
		elsif T = "1000" then
			temp_pc <= PCIN;
			RFLAG <= '0';
		else
			RFLAG <= '0';
		end if;
	end process;
end Behavioral;

