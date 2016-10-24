library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity calcmodule is
    Port ( RADDR : in  STD_LOGIC_VECTOR (2 downto 0);
           RUPDATE : in  STD_LOGIC;
           RDATA : in  STD_LOGIC_VECTOR (7 downto 0);
           IR : in  STD_LOGIC_VECTOR (15 downto 0);
           ADDR : out  STD_LOGIC_VECTOR (15 downto 0);
           BADDR : out  STD_LOGIC_VECTOR (15 downto 0);
           ALUOUT : out  STD_LOGIC_VECTOR (7 downto 0);
			  --r0, r1, r2, r3, r4, r5, r6, r7 : out  STD_LOGIC_VECTOR (7 downto 0);
           T : in  STD_LOGIC_VECTOR (3 downto 0));
end calcmodule;

architecture Behavioral of calcmodule is
type reg is array(0 to 7) of std_logic_vector(7 downto 0); 
begin
	process(RUPDATE, RDATA, RADDR, IR, T)
	variable r: reg := ("00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000");
	variable a:integer;
   variable b:integer;
	begin
		a := conv_integer(IR(10 downto 8));
		b := conv_integer(IR(2 downto 0));
		if RUPDATE = '1' then
			r(conv_integer(RADDR)) := RDATA;
			end if;
		if T = "0010" then 
			case IR(15 downto 11) is
				when "00000" =>
				-- JMP X
					ADDR <= r(7)&IR(7 downto 0);
				when "00010" =>
				-- JZ Ri X
					ADDR <= r(7)&IR(7 downto 0);
					ALUOUT <= r(a);
				when "00100" =>
				--SUB Ri Rj
					ALUOUT <= r(a) - r(b);
				when "00110" =>
				--ADD Ri Rj
					ALUOUT <= r(a) + r(b);
				when "01000" =>
				--MVI Ri X
					ALUOUT <= IR(7 downto 0);
				when "01010" =>
				--MOV Ri Rj
					ALUOUT <= r(b);
				when "01100" =>
				--STA Ri X
					BADDR <= r(7)&IR(7 downto 0);
					ALUOUT <= r(a);
				when "01110" =>
				--LDA Ri X
					BADDR <= r(7)&IR(7 downto 0);
				when "10000" =>
				--IN Ri IOAD
					ALUOUT <= r(a);
				when "10010" =>
					null;
				--OUT Ri IOAD
				when others =>
					null;
			end case;
		end if;
	--r0 <= r(0);
	--r1 <= r(1);
	--r2 <= r(2);
	--r3 <= r(3);
	--r4 <= r(4);
	--r5 <= r(5);
	--r6 <= r(6);
	--r7 <= r(7);
	end process;

end Behavioral;

