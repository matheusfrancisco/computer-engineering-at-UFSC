library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;



entity CAMINHO_CONTROLE is
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
end CAMINHO_CONTROLE;

architecture Behavioral of CAMINHO_CONTROLE is
----------------------------------------------------------------------------------
-- Internal signals and components.
----------------------------------------------------------------------------------
	COMPONENT MAQUINA_ESTADOS is
		GENERIC(
				p_DATA_SIZE    : INTEGER := 9; 
				p_OPCODE_SIZE  : INTEGER := 5;
				p_REG_SIZE     : INTEGER := 32;
				p_ROM_SIZE		: INTEGER := 6
		);
		Port ( i_CLK 		: in  STD_LOGIC;
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

----------------------------------------------------------------------------	
begin

		U00 : MAQUINA_ESTADOS 
		GENERIC MAP(
						p_DATA_SIZE    => p_DATA_SIZE, 
						p_OPCODE_SIZE  => p_OPCODE_SIZE,
						p_REG_SIZE     => p_REG_SIZE,
						p_ROM_SIZE		=> p_ROM_SIZE
		)
		PORT MAP( 
					  i_CLK 		=> i_CLK,
					  i_RST 		=> i_RST,
					  
					  o_SEL_RS	=> o_SEL_RS,
					  o_SEL_RT	=> o_SEL_RT,
					  o_SEL_DST	=> o_SEL_DST,
					  o_EN0 		=> o_EN0,
					  o_EN1 		=> o_EN1,
					  o_EN2 		=> o_EN2,
					  o_EN3 		=> o_EN3,
					  o_DATA		=> o_DATA,
					  o_MUX_DST => o_MUX_DST,
					  o_SEL_ALU	=> o_SEL_ALU,
					  
					  i_CODE		=> i_CODE,
					  o_ADD_ROM	=> o_ADD_ROM,
					  o_RD		=> o_RD
		 );
	
end Behavioral;