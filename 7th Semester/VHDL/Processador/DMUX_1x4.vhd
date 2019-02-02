library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

ENTITY DMUX_1x4 IS
	GENERIC(
			p_DATA_SIZE    : INTEGER := 16
	);
	PORT(
			o_DATA_0	: OUT STD_LOGIC_VECTOR((p_DATA_SIZE-1) DOWNTO 0);
			o_DATA_1	: OUT STD_LOGIC_VECTOR((p_DATA_SIZE-1) DOWNTO 0);
			o_DATA_2	: OUT STD_LOGIC_VECTOR((p_DATA_SIZE-1) DOWNTO 0);
			o_DATA_3	: OUT STD_LOGIC_VECTOR((p_DATA_SIZE-1) DOWNTO 0);
			i_SEL 	: IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
			i_DATA	: IN  STD_LOGIC_VECTOR((p_DATA_SIZE-1) DOWNTO 0)
			);
END DMUX_1x4;
	
	
ARCHITECTURE behavioral OF DMUX_1x4 IS	

BEGIN
	
	process (i_SEL, i_DATA)
	begin
		if (i_SEL = "00" ) then
			o_DATA_0 <= i_DATA;
		elsif (i_SEL = "01" ) then
			o_DATA_1 <= i_DATA;
		elsif (i_SEL = "10" ) then
			o_DATA_2 <= i_DATA;
		else
			o_DATA_3 <= i_DATA;
		end if;
	end process;
	
	
END behavioral;

