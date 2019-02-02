library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

ENTITY ALU IS
	GENERIC(
			p_DATA_SIZE    : INTEGER := 16; 
			p_OPCODE_SIZE  : INTEGER := 5
	);
	PORT(
			i_RS 	: IN STD_LOGIC_VECTOR((p_DATA_SIZE-1) DOWNTO 0);
			i_RT  : IN STD_LOGIC_VECTOR((p_DATA_SIZE-1) DOWNTO 0);
			o_RES : OUT STD_LOGIC_VECTOR((p_DATA_SIZE-1) DOWNTO 0);
			i_SEL : IN STD_LOGIC_VECTOR((p_OPCODE_SIZE-1) DOWNTO 0)
	);
END ALU;
	
	
ARCHITECTURE behavioral OF ALU IS	

	SIGNAL w_RS 	: STD_LOGIC_VECTOR((p_DATA_SIZE-1) DOWNTO 0);
	SIGNAL w_RT  	: STD_LOGIC_VECTOR((p_DATA_SIZE-1) DOWNTO 0);
	SIGNAL w_SEL 	: STD_LOGIC_VECTOR((p_OPCODE_SIZE-1) DOWNTO 0);
	
BEGIN
	w_RS  <= i_RS;
	w_RT  <= i_RT;
	w_SEL <= i_SEL;
	
		
	process (w_SEL, w_RS, w_RT)
	begin
		if (w_SEL = ('0' & x"1")) then
			o_RES <= (w_RS + w_RT);
		elsif (w_SEL = ('0' & x"2")) then
			o_RES <= (w_RS - w_RT);
		elsif (w_SEL = ('0' & x"3")) then
			o_RES <= (w_RS + w_RT);
		elsif (w_SEL = ('0' & x"4")) then
			o_RES <= (w_RS - w_RT);
		elsif (w_SEL = ('0' & x"5")) then
			o_RES <= (w_RS and w_RT);
		elsif (w_SEL = ('0' & x"6")) then
			o_RES <= (w_RS or w_RT);
		elsif (w_SEL = ('0' & x"7")) then
			o_RES <= (w_RS xor w_RT);
		elsif (w_SEL = ('0' & x"8")) then
			o_RES <= (not w_RS);
		else
			o_RES <= (others => '0');
		end if;
		
	end process;
	
	
END behavioral;

