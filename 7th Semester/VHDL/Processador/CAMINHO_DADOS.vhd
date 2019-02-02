library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

ENTITY CAMINHO_DADOS IS
	GENERIC(
			p_DATA_SIZE    : INTEGER := 9; 
			p_OPCODE_SIZE  : INTEGER := 5
	);
	PORT(
			i_CLK			: IN STD_LOGIC;
			i_RST 		: IN STD_LOGIC;
			
			i_SEL_RS		: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			i_SEL_RT		: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			i_SEL_DST	: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			i_SEL_ALU	: IN STD_LOGIC_VECTOR((p_OPCODE_SIZE-1) DOWNTO 0);
			
			i_MUX_DST	: IN STD_LOGIC;
			
			i_EN0  		: IN STD_LOGIC;
			i_EN1  		: IN STD_LOGIC;
			i_EN2  		: IN STD_LOGIC;
			i_EN3  		: IN STD_LOGIC;

			i_DATA 		: IN STD_LOGIC_VECTOR((p_DATA_SIZE-1) DOWNTO 0)
	);
END CAMINHO_DADOS;
	
	
ARCHITECTURE behavioral OF CAMINHO_DADOS IS	
-- Declaração de componentes e sinais internos.

	COMPONENT BANCO_REGISTRADORES IS
		GENERIC(
			p_DATA_SIZE    : INTEGER := 16
		);	
		PORT(
				i_CLK			: IN STD_LOGIC;
				i_RST 		: IN STD_LOGIC;
				
				i_SEL_RS		: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
				i_SEL_RT		: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
				i_SEL_DST	: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
				
				i_EN0  		: IN STD_LOGIC;
				i_EN1  		: IN STD_LOGIC;
				i_EN2  		: IN STD_LOGIC;
				i_EN3  		: IN STD_LOGIC;

				i_DATA 		: IN STD_LOGIC_VECTOR(8 DOWNTO 0);
				o_RS  		: OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
				o_RT  		: OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
		);
	END COMPONENT;
	
	COMPONENT ALU IS
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
	END COMPONENT;
	
	
	signal w_RS			: STD_LOGIC_VECTOR((p_DATA_SIZE-1) DOWNTO 0);
	signal w_RT			: STD_LOGIC_VECTOR((p_DATA_SIZE-1) DOWNTO 0);
	signal w_RES_ALU	: STD_LOGIC_VECTOR((p_DATA_SIZE-1) DOWNTO 0);
	signal w_RES_DST	: STD_LOGIC_VECTOR((p_DATA_SIZE-1) DOWNTO 0);

	
------------------------------------------------
BEGIN
	
	U01 : BANCO_REGISTRADORES 
	GENERIC MAP(
				p_DATA_SIZE => p_DATA_SIZE
	)	
	PORT MAP (
				i_CLK			=> i_CLK,
				i_RST 		=> i_RST,
				
				i_SEL_RS		=> i_SEL_RS,
				i_SEL_RT		=> i_SEL_RT,
				i_SEL_DST	=> i_SEL_DST,
				
				i_EN0  		=> i_EN0,
				i_EN1  		=> i_EN1,
				i_EN2  		=> i_EN2,
				i_EN3  		=> i_EN3,

				i_DATA 		=> w_RES_DST,
				o_RS  		=> w_RS,
				o_RT  		=> w_RT
	);
		
	U02 : ALU 
	GENERIC MAP(
			p_DATA_SIZE    => p_DATA_SIZE, 
			p_OPCODE_SIZE  => p_OPCODE_SIZE
	)
	PORT MAP(
			i_RS 		=> w_RS,
			i_RT  	=> w_RT,
			o_RES 	=> w_RES_ALU,
			i_SEL 	=> i_SEL_ALU
	);		
		
	-- MUX_2x1
	w_RES_DST <= w_RES_ALU WHEN (i_MUX_DST = '0') ELSE i_DATA;
	
END behavioral;