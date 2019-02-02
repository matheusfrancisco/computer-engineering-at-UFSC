library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

ENTITY TB_PROCESSADOR IS
GENERIC(
			p_DATA_SIZE    : INTEGER := 9; 
			p_OPCODE_SIZE  : INTEGER := 5;
			p_REG_SIZE     : INTEGER := 32;
			p_RAM_SIZE		: INTEGER := 6;
			p_ROM_SIZE		: INTEGER := 6;
			p_IO_SIZE		: INTEGER := 10;
			p_QTDE_DEVICES	: INTEGER := 2		
	);
END TB_PROCESSADOR;


ARCHITECTURE behavior OF TB_PROCESSADOR IS

	-- Declare o componente a ser testado.
	COMPONENT PROCESSADOR_20162 IS
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
		);
	END COMPONENT;


	COMPONENT ROM IS
	GENERIC (
				--
				-- Size of the address bus.
				--
				p_ROM_SIZE		 : integer := 6				
	);
	PORT ( 
					i_CLK			 : in STD_LOGIC;
					i_EN 			 : in STD_LOGIC;
					i_ADDRESS    : in STD_LOGIC_VECTOR ((p_ROM_SIZE-1) downto 0);
					o_DATA       : out STD_LOGIC_VECTOR (31 downto 0)
	);
	END COMPONENT;	
	
	
	-- Declare sinais com os nomes dos pinos do componente.
	SIGNAL i_CLK			: STD_LOGIC;
	SIGNAL i_RST			: STD_LOGIC;
	signal w_ADDRESS		:   STD_LOGIC_VECTOR ((p_ROM_SIZE-1) downto 0);
	signal w_DATA			:   STD_LOGIC_VECTOR ((p_REG_SIZE-1) downto 0);
	signal w_RD_ROM		:   STD_LOGIC;		

	-- Clock period definitions
	constant i_CLK_period : time := 10 ns;
	
BEGIN

	-- Instancialize um componente dentro do arquivo de teste.
	
	--
	-- Instancialização do processador.
	--
	U00 : PROCESSADOR_20162 
		GENERIC MAP(
						p_DATA_SIZE    => p_DATA_SIZE, 
						p_OPCODE_SIZE  => p_OPCODE_SIZE,
						p_REG_SIZE     => p_REG_SIZE,
						p_ROM_SIZE		=> p_ROM_SIZE
		)
		PORT MAP(
						i_CLK			=> i_CLK,
						i_RST 		=> i_RST,
						
						o_ADD_ROM	=> w_ADDRESS,
						i_DATA		=> w_DATA,
						o_RD  		=> w_RD_ROM
		);

	--
	-- Instancialização da memória de código.
	--	
	U01 : ROM 
		GENERIC MAP(
						p_ROM_SIZE		=> p_ROM_SIZE				
		)
		PORT MAP( 
						i_CLK			=> i_CLK,
						i_EN 			=> w_RD_ROM,
						i_ADDRESS   => w_ADDRESS,
						o_DATA      => w_DATA
		);	
	-- Clock process definitions
	process
		begin
			i_CLK <= '0';
			wait for i_CLK_period/2;
			i_CLK <= '1';
			wait for i_CLK_period/2;
	end process;

	
	process
	begin
		i_RST <= '1';
		wait for 100 ns;
		i_RST <= '1';
		wait for 40 ns;
		i_RST <= '0';
		wait;
	end process;
	
	
END;

	