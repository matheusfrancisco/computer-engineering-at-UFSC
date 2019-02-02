library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

ENTITY MUX_4x1 IS
	GENERIC(
			p_DATA_SIZE    : INTEGER := 16
	);
	PORT(
			i_DATA_0	: IN STD_LOGIC_VECTOR((p_DATA_SIZE-1) DOWNTO 0);
			i_DATA_1	: IN STD_LOGIC_VECTOR((p_DATA_SIZE-1) DOWNTO 0);
			i_DATA_2	: IN STD_LOGIC_VECTOR((p_DATA_SIZE-1) DOWNTO 0);
			i_DATA_3	: IN STD_LOGIC_VECTOR((p_DATA_SIZE-1) DOWNTO 0);
			i_SEL 	: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			o_DATA	: OUT STD_LOGIC_VECTOR((p_DATA_SIZE-1) DOWNTO 0)
			);
END MUX_4x1;
	
	
ARCHITECTURE behavioral OF MUX_4x1 IS	

BEGIN
	
	process (i_DATA_0, i_DATA_1, i_DATA_2, i_DATA_3, i_SEL)
	begin
		case i_SEL is
			when "00" 	=> o_DATA <= i_DATA_0;
			when "01" 	=> o_DATA <= i_DATA_1;
			when "10" 	=> o_DATA <= i_DATA_2;
			when others => o_DATA <= i_DATA_3;
		end case;
	end process;

	
END behavioral;

