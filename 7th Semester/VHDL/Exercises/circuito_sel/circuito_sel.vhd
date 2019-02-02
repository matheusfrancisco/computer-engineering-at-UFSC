library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

ENTITY circuito_sel IS

	PORT(
			i_selA: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			i_selE: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		
			o_DATA	: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
			);
END circuito_sel;
	
	
ARCHITECTURE behavioral OF circuito_sel IS	


	
	
	begin 
		 o_DATA <= "01111111" when i_SelA = "000" AND i_SelE = "100" ELSE 
		           "10111111" when i_SelA = "001" AND i_SelE = "010" ELSE 
		           "11011111" when i_SelA = "010" AND i_SelE = "000" ELSE 
		           "11101111" when i_SelA = "011" AND i_SelE = "001" ELSE 
		           "11110111" when i_SelA = "100" AND i_SelE = "001" ELSE 
		           "11111011" when i_SelA = "101" AND i_SelE = "001" ELSE 
		           "11111101" when i_SelA = "110" AND i_SelE = "001" ELSE 
		           "11111110" when i_SelA = "111" AND i_SelE = "001" ELSE 
					  "00000000";
					  
                 	 
		 
			
			
			
			
	
end behavioral;

