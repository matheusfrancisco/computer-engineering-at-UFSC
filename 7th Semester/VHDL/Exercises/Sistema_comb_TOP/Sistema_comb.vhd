library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

ENTITY sistema_comb IS

	
	PORT(
			
			i_SELABC1 	: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			i_SELABC2 	: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			i_SELABC3 	: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			o_DATA_00	: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			o_DATA_01	: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			o_DATA_02	: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
			
			);
END sistema_comb;
	
	
ARCHITECTURE behavioral OF sistema_comb IS	

BEGIN
	
	process (i_SELABC1)
	begin
		case i_SELABC1 is
			when "000" 	=> o_DATA_00 <= x"A5";
			when "001" 	=> o_DATA_00 <= x"B5";
			when "010" 	=> o_DATA_00 <= x"C5";
			when "011" => o_DATA_00 <= x"D5";
		   when "100" => o_DATA_00 <= x"E5";
			when others => NULL;
		end case;
	end process;
	
	
	process (i_SELABC2)
	begin
		case i_SELABC2 is
			when "000" 	=> o_DATA_01 <= x"5A";
			when "001" 	=> o_DATA_01 <= x"5B";
			when "010" 	=> o_DATA_01 <= x"5C";
			when "011" => o_DATA_01 <= x"5D";
		   when "100" => o_DATA_01 <= x"5E";
			when others => NULL;
		end case;
	end process;
	
	
	process (i_SELABC3)
	begin
		case i_SELABC3 is
			when "000" 	=> o_DATA_02 <= x"10";
			when "001" 	=> o_DATA_02 <= x"20";
			when "010" 	=> o_DATA_02 <= x"30";
			when "011" => o_DATA_02 <= x"40";
		   when "100" => o_DATA_02 <= x"50";
			when others => NULL;
		end case;
	end process;


	
END behavioral;

