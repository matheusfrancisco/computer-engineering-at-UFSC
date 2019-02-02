library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

ENTITY BANCO_REGISTRADORES IS
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

			i_DATA 		: IN STD_LOGIC_VECTOR((p_DATA_SIZE-1) DOWNTO 0);
			o_RS  		: OUT STD_LOGIC_VECTOR((p_DATA_SIZE-1) DOWNTO 0);
			o_RT  		: OUT STD_LOGIC_VECTOR((p_DATA_SIZE-1) DOWNTO 0)
	);
END BANCO_REGISTRADORES;
	
	
ARCHITECTURE behavioral OF BANCO_REGISTRADORES IS	
-- Declaração de componentes e sinais internos.

	COMPONENT REGISTRADOR IS
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
	END COMPONENT;

	COMPONENT DMUX_1x4 IS
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
	END COMPONENT;
	
	
	COMPONENT MUX_4x1 IS
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
	END COMPONENT;
	
	signal w_DIN_0		: STD_LOGIC_VECTOR((p_DATA_SIZE-1) DOWNTO 0);
	signal w_DIN_1		: STD_LOGIC_VECTOR((p_DATA_SIZE-1) DOWNTO 0);
	signal w_DIN_2		: STD_LOGIC_VECTOR((p_DATA_SIZE-1) DOWNTO 0);
	signal w_DIN_3		: STD_LOGIC_VECTOR((p_DATA_SIZE-1) DOWNTO 0);
	
	signal w_DOUT_0	: STD_LOGIC_VECTOR((p_DATA_SIZE-1) DOWNTO 0);
	signal w_DOUT_1	: STD_LOGIC_VECTOR((p_DATA_SIZE-1) DOWNTO 0);
	signal w_DOUT_2	: STD_LOGIC_VECTOR((p_DATA_SIZE-1) DOWNTO 0);
	signal w_DOUT_3	: STD_LOGIC_VECTOR((p_DATA_SIZE-1) DOWNTO 0);
	
------------------------------------------------
BEGIN
	
		U00 :  REGISTRADOR 
		GENERIC MAP(
			p_DATA_SIZE  => p_DATA_SIZE
		)
		PORT MAP(
			i_CLK		=> i_CLK,
			i_RST 	=> i_RST,
			i_EN  	=> i_EN0,
			i_DATA 	=> w_DIN_0,
			o_DATA  	=> w_DOUT_0
		);
	
		U01 :  REGISTRADOR 
		GENERIC MAP(
			p_DATA_SIZE  => p_DATA_SIZE
		)
		PORT MAP(
			i_CLK		=> i_CLK,
			i_RST 	=> i_RST,
			i_EN  	=> i_EN1,
			i_DATA 	=> w_DIN_1,
			o_DATA  	=> w_DOUT_1
		);
	
		U02 :  REGISTRADOR 
		GENERIC MAP(
			p_DATA_SIZE  => p_DATA_SIZE
		)
		PORT MAP(		
			i_CLK		=> i_CLK,
			i_RST 	=> i_RST,
			i_EN  	=> i_EN2,
			i_DATA 	=> w_DIN_2,
			o_DATA  	=> w_DOUT_2
		);

		U03 :  REGISTRADOR 
		GENERIC MAP(
			p_DATA_SIZE  => p_DATA_SIZE
		)
		PORT MAP(		
			i_CLK		=> i_CLK,
			i_RST 	=> i_RST,
			i_EN  	=> i_EN3,
			i_DATA 	=> w_DIN_3,
			o_DATA  	=> w_DOUT_3
		);
		
		
		U04 : DMUX_1x4 
		GENERIC MAP(
			p_DATA_SIZE  => p_DATA_SIZE
		)
		PORT MAP(		
			o_DATA_0	=> w_DIN_0,
			o_DATA_1	=> w_DIN_1,
			o_DATA_2	=> w_DIN_2,
			o_DATA_3	=> w_DIN_3,
			i_SEL 	=> i_SEL_DST,
			i_DATA	=> i_DATA
		);
		

		U05 : MUX_4x1 
		GENERIC MAP(
			p_DATA_SIZE  => p_DATA_SIZE
		)
		PORT MAP(		
			i_DATA_0	=> w_DOUT_0,
			i_DATA_1	=> w_DOUT_1,
			i_DATA_2	=> w_DOUT_2,
			i_DATA_3	=> w_DOUT_3,
			i_SEL 	=> i_SEL_RS,
			o_DATA	=> o_RS
		);
	
		U06 : MUX_4x1 
		GENERIC MAP(
			p_DATA_SIZE  => p_DATA_SIZE
		)
		PORT MAP(		
			i_DATA_0	=> w_DOUT_0,
			i_DATA_1	=> w_DOUT_1,
			i_DATA_2	=> w_DOUT_2,
			i_DATA_3	=> w_DOUT_3,
			i_SEL 	=> i_SEL_RT,
			o_DATA	=> o_RT
		);		
		
END behavioral;