library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity storagemodule is
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
end storagemodule;

architecture Behavioral of storagemodule is

begin
	process(T, DATA, ADDRIN, IR)
	begin
		if T = "0100" then
			case IR(15 downto 11) is
			when "00000" =>
			-- JMP X
			R <= '0';
			W <= '0';
			I <= '0';
			O <= '0';
			RTEMP16 <= ADDRIN;
			when "00010" =>
			-- JZ Ri X
			R <= '0';
			W <= '0';
			I <= '0';
			O <= '0';
			RTEMP8 <= ALUIN;
			RTEMP16 <= ADDRIN;
			when "00100" =>
			--SUB Ri Rj
			R <= '0';
			W <= '0';
			I <= '0';
			O <= '0';
			RTEMP8 <= ALUIN;
			when "00110" =>
			--ADD Ri Rj
			R <= '0';
			W <= '0';
			I <= '0';
			O <= '0';
			RTEMP8 <= ALUIN;
			when "01000" =>
			--MVI Ri X
			R <= '0';
			W <= '0';
			I <= '0';
			O <= '0';
			RTEMP8 <= ALUIN;
			when "01010" =>
			--MOV Ri Rj
			R <= '0';
			W <= '0';
			I <= '0';
			O <= '0';
			RTEMP8 <= ALUIN;
			when "01100" =>
			--STA Ri X
			R <= '0';
			W <= '1';
			I <= '0';
			O <= '0';
			--Rtemp <= data;
			when "01110" =>
			--LDA Ri X
			R <= '1';
			W <= '0';
			I <= '0';
			O <= '0';
			RTEMP8 <= DATA;
			when "10000" =>
			--IN Ri IOAD
			R <= '0';
			W <= '0';
			I <= '1';
			O <= '0';
			RTEMP8 <= DATA;
			when "10010" =>
			--OUT Ri IOAD
			R <= '0';
			W <= '0';
			I <= '0';
			O <= '1';
			when others =>
			--Do nothing.
				null;
			end case;
		end if;
	end process;
end Behavioral;

