library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity clockmodule is
port(
	clk: in std_logic;
	T: out std_logic_vector(3 downto 0);
	reset: in std_logic
	
);
end clockmodule;

architecture Behavioral of clockmodule is
signal temp:std_logic_vector (3 downto 0);
begin
	process(clk, reset, temp)
	begin
		if(reset = '1') then
			temp <= "0000";
		elsif clk = '1' and clk'event then
			case temp is
			when "0000" | "1000" =>
				temp <= "0001";
			when "0001" =>
				temp <= "0010";
			when "0010" =>
				temp <= "0100";
			when "0100" =>
				temp <= "1000";
			when others =>
				temp <= "0000";
			end case;
		end if;
	end process;
	T <= temp;
end Behavioral;

