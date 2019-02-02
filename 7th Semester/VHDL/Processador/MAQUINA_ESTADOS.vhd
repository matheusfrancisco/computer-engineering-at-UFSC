library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;



entity MAQUINA_ESTADOS is
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
end MAQUINA_ESTADOS;

architecture Behavioral of MAQUINA_ESTADOS is
----------------------------------------------------------------------------------
-- Internal signals.
----------------------------------------------------------------------------------
 type w_State_Type is (st_INIT, st_FETCH, st_DECODE, st_EXECUTE, st_WRITE_BACK); 

	attribute syn_encoding : string;
	attribute syn_encoding of w_State_Type : type is "safe";
 
   signal w_STATE 		: w_State_Type;
	signal   w_CODE		:  STD_LOGIC_VECTOR((p_REG_SIZE-1) DOWNTO 0);
	
--	variable w_ADD_ROM 	:  STD_LOGIC_VECTOR((p_ROM_SIZE-1) DOWNTO 0);
--	variable w_RD			:  STD_LOGIC;
--
--	variable w_SEL_RS		: STD_LOGIC_VECTOR(1 DOWNTO 0);
--	variable w_SEL_RT		: STD_LOGIC_VECTOR(1 DOWNTO 0);
--  	variable w_SEL_DST	: STD_LOGIC_VECTOR(1 DOWNTO 0);
--	variable w_EN0 		: STD_LOGIC;
--	variable w_EN1 		: STD_LOGIC;
--	variable w_EN2 		: STD_LOGIC;
--	variable w_EN3 		: STD_LOGIC;
--	variable w_DATA		: STD_LOGIC_VECTOR((p_DATA_SIZE-1) DOWNTO 0);
--	variable w_MUX_DST 	: STD_LOGIC;
--	variable w_SEL_ALU	: STD_LOGIC_VECTOR((p_OPCODE_SIZE-1) DOWNTO 0);
	
begin

----------------------------------------------------------------------------------
-- State machine.
----------------------------------------------------------------------------------
	
	U_MACHINE : process(i_CLK, i_RST)          			
		variable w_ADD_ROM 	:  STD_LOGIC_VECTOR((p_ROM_SIZE-1) DOWNTO 0);
		variable w_RD			:  STD_LOGIC;

		variable w_SEL_RS		: STD_LOGIC_VECTOR(1 DOWNTO 0);
		variable w_SEL_RT		: STD_LOGIC_VECTOR(1 DOWNTO 0);
		variable w_SEL_DST	: STD_LOGIC_VECTOR(1 DOWNTO 0);
		variable w_EN0 		: STD_LOGIC;
		variable w_EN1 		: STD_LOGIC;
		variable w_EN2 		: STD_LOGIC;
		variable w_EN3 		: STD_LOGIC;
		variable w_DATA		: STD_LOGIC_VECTOR((p_DATA_SIZE-1) DOWNTO 0);
		variable w_MUX_DST 	: STD_LOGIC;
		variable w_SEL_ALU	: STD_LOGIC_VECTOR((p_OPCODE_SIZE-1) DOWNTO 0);
	begin    																						
		if (i_RST = '1') then			
			
			w_SEL_RS		:= (OTHERS => '0');
			w_SEL_RT		:= (OTHERS => '0');
  			w_SEL_DST	:= (OTHERS => '0');
			w_EN0 		:= '0';
			w_EN1 		:= '0';
			w_EN2 		:= '0';
			w_EN3 		:= '0';
			w_DATA		:= (OTHERS => '0');
			w_MUX_DST 	:= '0';
			w_SEL_ALU	:= (OTHERS => '0');
			w_ADD_ROM   := (OTHERS => '0');
			w_RD			:= '0';
			w_STATE		<= st_INIT;				
			
		elsif rising_edge (i_CLK) then														
			case w_STATE is	

					when st_INIT =>					 															
						w_SEL_RS		:= (OTHERS => '0');
						w_SEL_RT		:= (OTHERS => '0');
						w_SEL_DST	:= (OTHERS => '0');
						w_EN0 		:= '0';
						w_EN1 		:= '0';
						w_EN2 		:= '0';
						w_EN3 		:= '0';
						w_DATA		:= (OTHERS => '0');
						w_MUX_DST 	:= '0';
						w_SEL_ALU	:= (OTHERS => '0');
						w_STATE     <= st_FETCH;
						
					when st_FETCH =>					 												                 
						w_RD		:= '1';
						w_STATE  <= st_DECODE;														

					when st_DECODE =>					 												                 
						w_RD		:= '0';
						
						if (w_code(31 downto 27) = "01010") then	-- LDI
							w_SEL_DST := w_code(26 downto 25);
							w_MUX_DST := '1';
							
							if(w_code(26 downto 25) = "00") then
								w_EN0 := '1';
							elsif (w_code(26 downto 25) = "01") then
								w_EN1 := '1';
							elsif (w_code(26 downto 25) = "10") then	
								w_EN2 := '1';
							else
								w_EN3 := '1';
							end if;
						
						elsif (w_code(31 downto 27) = "00011") then	-- ADD	
							w_SEL_RS 	:= w_code(24 downto 23);
							w_SEL_RT 	:= w_code(22 downto 21);
							w_SEL_ALU 	:= '0' & x"1"; -- 00001
								
						end if; 
						w_STATE  <= st_EXECUTE;														

					when st_EXECUTE =>					 												                 
						w_EN0 		:= '0';
						w_EN1 		:= '0';
						w_EN2 		:= '0';
						w_EN3 		:= '0';
						
						if (w_code(31 downto 27) = "00011") then	 		-- ADD
							w_SEL_DST := w_code(26 downto 25);
							
							if(w_code(26 downto 25) = "00") then
								w_EN0 := '1';
							elsif (w_code(26 downto 25) = "01") then
								w_EN1 := '1';
							elsif (w_code(26 downto 25) = "10") then	
								w_EN2 := '1';
							else
								w_EN3 := '1';
							end if;
							
							w_STATE <= st_WRITE_BACK;

						elsif ((w_code(31 downto 27) = "01010")) then	-- LDI
							w_ADD_ROM := w_ADD_ROM + 1;
							w_STATE <= st_FETCH;
							
						end if;
				
					when st_WRITE_BACK =>					 												                 
						w_EN0 		:= '0';
						w_EN1 		:= '0';
						w_EN2 		:= '0';
						w_EN3 		:= '0';
						w_ADD_ROM   := w_ADD_ROM + 1;
						
						w_STATE     <= st_FETCH;	
					
					when others =>
						w_STATE <= st_INIT;
				
			end case;																				

		end if;
		
		  o_SEL_RS	<= w_SEL_RS;
		  o_SEL_RT	<= w_SEL_RT;
		  o_SEL_DST	<= w_SEL_DST;
		  o_EN0 		<= w_EN0;
		  o_EN1 		<= w_EN1;
		  o_EN2 		<= w_EN2;
		  o_EN3 		<= w_EN3;
		  o_DATA		<= w_DATA;
		  o_MUX_DST <= w_MUX_DST;
		  o_SEL_ALU	<= w_SEL_ALU;
		  o_ADD_ROM <= w_ADD_ROM;
		  o_ADD_ROM <= w_ADD_ROM;			-- Endereço apontado para a ROM.
		  w_CODE    <= i_CODE;				-- Valor do registrador IP (Instruction Programm).
		  o_RD 		<= w_RD;		
		  
	end process U_MACHINE;																	

--  o_SEL_RS	<= w_SEL_RS;
--  o_SEL_RT	<= w_SEL_RT;
--  o_SEL_DST	<= w_SEL_DST;
--  o_EN0 		<= w_EN0;
--  o_EN1 		<= w_EN1;
--  o_EN2 		<= w_EN2;
--  o_EN3 		<= w_EN3;
--  o_DATA		<= w_DATA;
--  o_MUX_DST <= w_MUX_DST;
--  o_SEL_ALU	<= w_SEL_ALU;
--  o_ADD_ROM <= w_ADD_ROM;
--  o_ADD_ROM <= w_ADD_ROM;			-- Endereço apontado para a ROM.
--  w_CODE    <= i_CODE;				-- Valor do registrador IP (Instruction Programm).
--  o_RD 		<= w_RD;
	
end Behavioral;