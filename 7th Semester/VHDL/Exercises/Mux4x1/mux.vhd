library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

ENTITY MUX4x1 IS
	
	PORT(
			i_entrada_0	: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			i_entrada_1	: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			i_entrada_2	: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			i_entrada_3	: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			i_SEL 	: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			o_saida	: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
			);
END MUX4x1;
	
	
ARCHITECTURE behavioral OF MUX4x1 IS	

BEGIN
	
	process (i_entrada_0, i_entrada_1, i_entrada_2, i_entrada_3, i_SEL) -- When - case, usando process
	begin
		case i_SEL is
			when "00" 	=> o_saida <= i_entrada_0;
			when "01" 	=> o_saida <= i_entrada_1;
			when "10" 	=> o_saida <= i_entrada_2;
			when others => o_saida <= i_entrada_3;
		end case;     
	end process; 
	
	

	
	-- FEITO COM WITH SELECT, PARA OS 4x1 é a mesma coisa

	--architecture behavioral of MUX4x1 is 


--begin 
--with i_sel select

--o_saida <=  i_entrada(0) when "000",
         -- i_entrada(1) when "001",
			-- i_entrada(2) when "010",
			 --i_entrada(3) when "011",
			 --i_entrada(4) when "100",
			-- i_entrada(5) when "101",
			-- i_entrada(6) when "110",
			-- i_entrada(7) when "111",
			   --'0'    when others;

				


--end behavioral;






 --MUX usando WHEN - ELSE 4x1	

	--architecture behavioral of 4x1 is              
--BEGIN
--o_saida <= i_entrada_0 WHEN i_SEL = "00" ELSE
         --  i_entrada_1 WHEN i_SEL = "01" ELSE
          -- i_entrada_1 WHEN i_SEL = "10" ELSE
           --i_entrada_3 WHEN i_SEL = "11" ELSE
      -- 'X';      --- DEMAIS ENTRADAS
-- END behavioral; 
	
	

	
	
	
	
	
	
	
END behavioral;



