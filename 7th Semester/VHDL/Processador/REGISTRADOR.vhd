library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

ENTITY REGISTRADOR IS
	GENERIC(
			p_DATA_SIZE    : INTEGER := 16
	);
	PORT(
			i_CLK		: IN STD_LOGIC;
			i_RST 	: IN STD_LOGIC;
			i_EN  	: IN STD_LOGIC;
			i_DATA 	: IN STD_LOGIC_VECTOR((p_DATA_SIZE-1) DOWNTO 0);
			o_DATA  	: OUT STD_LOGIC_VECTOR((p_DATA_SIZE-1) DOWNTO 0)
	);
END REGISTRADOR;
	
	
ARCHITECTURE behavioral OF REGISTRADOR IS	

BEGIN
	
	process (i_CLK)
	begin
		if rising_edge (i_CLK) then
			if (i_RST = '1') then
				o_DATA <= (others=>'0');
			else
				if (i_EN = '1') then
					o_DATA <= i_DATA;
				end if;
			end if;
		end if;
	end process;
	
	
END behavioral;

