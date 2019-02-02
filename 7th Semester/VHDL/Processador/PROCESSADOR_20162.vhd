library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

ENTITY PROCESSADOR_20162 IS
	GENERIC(
			p_DATA_SIZE    : INTEGER := 9; 
			p_OPCODE_SIZE  : INTEGER := 5;
			p_REG_SIZE     : INTEGER := 32;
			p_ROM_SIZE		: INTEGER := 6
	);
	PORT(
			i_CLK			: IN STD_LOGIC;
			i_RST 		: IN STD_LOGIC;
			
			o_ADD_ROM	: OUT  STD_LOGIC_VECTOR((p_ROM_SIZE-1) DOWNTO 0);
			i_DATA		: IN   STD_LOGIC_VECTOR((p_REG_SIZE-1) DOWNTO 0);
			o_RD  		: OUT STD_LOGIC

--			o_DATA  		: OUT STD_LOGIC_VECTOR((p_DATA_SIZE-1) DOWNTO 0)
	);
END PROCESSADOR_20162;
	
	
ARCHITECTURE behavioral OF PROCESSADOR_20162 IS	
-------------------------------------------------------------
		COMPONENT CAMINHO_CONTROLE is
			GENERIC(
					p_DATA_SIZE    : INTEGER := 9; 
					p_OPCODE_SIZE  : INTEGER := 5;
					p_REG_SIZE     : INTEGER := 32;
					p_ROM_SIZE		: INTEGER := 6
			);
			Port (  i_CLK 		: in  STD_LOGIC;
					  i_RST 		: in  STD_LOGIC;
					  
					  o_SEL_RS	: OUT  STD_LOGIC_VECTOR(1 DOWNTO 0);
					  o_SEL_RT	: OUT  STD_LOGIC_VECTOR(1 DOWNTO 0);
					  o_SEL_DST	: OUT  STD_LOGIC_VECTOR(1 DOWNTO 0);
					  o_EN0 		: OUT  STD_LOGIC;
					  o_EN1 		: OUT  STD_LOGIC;
					  o_EN2 		: OUT  STD_LOGIC;
					  o_EN3 		: OUT  STD_LOGIC;
					  o_DATA		: OUT  STD_LOGIC_VECTOR((p_DATA_SIZE-1) DOWNTO 0);
					  o_MUX_DST : OUT  STD_LOGIC;
					  o_SEL_ALU	: OUT  STD_LOGIC_VECTOR((p_OPCODE_SIZE-1) DOWNTO 0);
					  
					  i_CODE		: IN   STD_LOGIC_VECTOR((p_REG_SIZE-1) DOWNTO 0);
					  o_ADD_ROM	: OUT  STD_LOGIC_VECTOR((p_ROM_SIZE-1) DOWNTO 0);
					  o_RD		: OUT   STD_LOGIC
			 );
		end COMPONENT;

		COMPONENT CAMINHO_DADOS IS
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
				i_SEL_ALU	: IN STD_LOGIC_VECTOR(4 DOWNTO 0);
				
				i_MUX_DST	: IN STD_LOGIC;
				
				i_EN0  		: IN STD_LOGIC;
				i_EN1  		: IN STD_LOGIC;
				i_EN2  		: IN STD_LOGIC;
				i_EN3  		: IN STD_LOGIC;

				i_DATA 		: IN STD_LOGIC_VECTOR(8 DOWNTO 0)
		);
	END COMPONENT;

	signal w_SEL_RS	:   STD_LOGIC_VECTOR(1 DOWNTO 0);
	signal w_SEL_RT	:   STD_LOGIC_VECTOR(1 DOWNTO 0);
	signal w_SEL_DST	:   STD_LOGIC_VECTOR(1 DOWNTO 0);
	signal w_EN0 		:   STD_LOGIC;
	signal w_EN1 		:   STD_LOGIC;
	signal w_EN2 		:   STD_LOGIC;
	signal w_EN3 		:   STD_LOGIC;
	signal w_DATA		:   STD_LOGIC_VECTOR((p_DATA_SIZE-1) DOWNTO 0);
	signal w_MUX_DST  :   STD_LOGIC;
	signal w_SEL_ALU	:   STD_LOGIC_VECTOR((p_OPCODE_SIZE-1) DOWNTO 0);
	
-------------------------------------------------------------
BEGIN
	
	U00 : CAMINHO_CONTROLE 
			GENERIC MAP(
					p_DATA_SIZE    => p_DATA_SIZE, 
					p_OPCODE_SIZE  => p_OPCODE_SIZE,
					p_REG_SIZE     => p_REG_SIZE,
					p_ROM_SIZE		=> p_ROM_SIZE
			)
			PORT MAP (  
						  i_CLK 		=> i_CLK,
						  i_RST 		=> i_RST,
					  
						  o_SEL_RS	=> w_SEL_RS,
						  o_SEL_RT	=> w_SEL_RT,
						  o_SEL_DST	=> w_SEL_DST,
						  o_EN0 		=> w_EN0,
						  o_EN1 		=> w_EN1,
						  o_EN2 		=> w_EN2,
						  o_EN3 		=> w_EN3,
						  o_DATA		=> w_DATA,
						  o_MUX_DST => w_MUX_DST,
						  o_SEL_ALU	=> w_SEL_ALU,
						  
						  i_CODE		=> i_DATA,
						  o_ADD_ROM	=> o_ADD_ROM,
						  o_RD		=> o_RD
			 );
	
	U01 : CAMINHO_DADOS 
		GENERIC MAP(
				p_DATA_SIZE    => p_DATA_SIZE,
				p_OPCODE_SIZE  => p_OPCODE_SIZE
		)
		PORT MAP(
				i_CLK			=> i_CLK,
				i_RST 		=> i_RST,
				
				i_SEL_RS		=> w_SEL_RS,
				i_SEL_RT		=> w_SEL_RT,
				i_SEL_DST	=> w_SEL_DST,
				i_SEL_ALU	=> w_SEL_ALU,
				
				i_MUX_DST	=> w_MUX_DST,
				
				i_EN0  		=> w_EN0,
				i_EN1  		=> w_EN1,
				i_EN2  		=> w_EN2,
				i_EN3  		=> w_EN3,

				i_DATA 		=> w_DATA
		);	
	
END behavioral;