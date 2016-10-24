library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity rewritemodule is
    port ( T : in STD_LOGIC_VECTOR(3 downto 0);
		   PCIN : in STD_LOGIC_VECTOR(15 downto 0);
		   RTEMPIN16 : in  STD_LOGIC_VECTOR (15 downto 0);
           RTEMPIN8 : in  STD_LOGIC_VECTOR (7 downto 0);
           IR : in  STD_LOGIC_VECTOR (15 downto 0);
           PCNEW : out  STD_LOGIC_VECTOR (15 downto 0);
           RADDR : out  STD_LOGIC_VECTOR (2 downto 0);
           RUPDATEOUT : out  STD_LOGIC;
           RDATA : out  STD_LOGIC_VECTOR (7 downto 0));
end rewritemodule;

architecture Behavioral of rewritemodule is
 
begin
	process(T, PCIN, IR, RTEMPIN16, RTEMPIN8)
	begin
		if T = "1000" then
			case IR(15 downto 11) is
				when "00000" => --JMP
				PCNEW <= RTEMPIN16;
				RUPDATEOUT <= '0';
				
				when "00010" =>
				if RTEMPIN8 = "00000000" then
					PCNEW <= RTEMPIN16;
				else
					PCNEW <= PCIN + '1';
				end if;
				RUPDATEOUT <= '0';
				
				when "00100" =>
				PCNEW <= PCIN + '1';
				RUPDATEOUT <=  '1';
				RADDR <= IR(10 downto 8);
				RDATA <= RTEMPIN8;
				
				when "00110" =>
				PCNEW <= PCIN + '1';
				RUPDATEOUT <= '1';
				RADDR <= IR(10 downto 8);
				RDATA <= RTEMPIN8;
				
				when "01000" =>
				PCNEW <= PCIN + '1';
				RUPDATEOUT <= '1';
				RADDR <= IR(10 downto 8);
				RDATA <= RTEMPIN8;
				
				when "01010" =>
				PCNEW <= PCIN + '1';
				RUPDATEOUT <= '1';
				RADDR <= IR(10 downto 8);
				RDATA <= RTEMPIN8;
				
				when "01100" => -- sta
				PCNEW <= PCIN + '1';
				RUPDATEOUT <= '0';
				
				when "01110" => --lda
				PCNEW <= PCIN + '1';
				RUPDATEOUT <= '1';
				RADDR <= IR(10 downto 8);
				RDATA <= RTEMPIN8;
				
				when "10000" =>
				PCNEW <= PCIN + '1';
				RUPDATEOUT <= '1';
				RADDR <= IR(10 downto 8);
				RDATA <= RTEMPIN8;
				
				when "10010" =>
				PCNEW <= PCIN + '1';
				RUPDATEOUT <= '0';
				when others =>
				null;
			end case;
		end if;
	end process;
end Behavioral;

