library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;



ENTITY Sistema_comb_TOP  is
	port (
		i_EN, i_CLK : in STD_LOGIC;
	   
		i_DATA : in std_logic_vector(7 downto 0);
		o_DATA : out std_logic_vector(7 downto 0);
		i_SELABC1 	: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			i_SELABC2 	: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			i_SELABC3 	: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			o_DATA_00	: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			o_DATA_01	: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			o_DATA_02	: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			o_A :  out std_logic_vector(7 downto 0);
			o_B :  out std_logic_vector(7 downto 0);
			o_C :  out std_logic_vector(7 downto 0)
			
	
		

		
	);
end Sistema_comb_TOP;

ARCHITECTURE behavior of Sistema_comb_TOP is
	
 


signal w_saida_00 :std_LOGIC_VECTOR(7 downto 0);
signal w_saida_01 :std_LOGIC_VECTOR(7 downto 0);
signal w_saida_02 :std_LOGIC_VECTOR(7 downto 0);
COMPONENT sistema_comb is
	
	

	port (
		i_SELABC1 	: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			i_SELABC2 	: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			i_SELABC3 	: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			o_DATA_00	: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			o_DATA_01	: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			o_DATA_02	: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
end component;		

		
component Registradores is
port (
		
      i_EN, i_CLK : in STD_LOGIC;
	   
		i_DATA : in std_logic_vector(7 downto 0);
		o_DATA : out std_logic_vector(7 downto 0)
	);
end component;
  
		
BEGIN 

	U1 : sistema_comb PORT MAP (
		    i_seLABC1 => i_sELABC1,
			 i_seLABC2 => i_sELABC2,
			 i_seLABC3 => i_sELABC3,
          o_DATA_00 => w_saida_00,
			 o_DATA_01 => w_saida_01,
			 o_DATA_02 => w_saida_02
			 
			 
			 
);
		
	U2 : registradores PORT MAP (
	       i_CLK => i_CLK,
          i_dATA => w_saida_00,
          I_EN => i_EN,
			 o_DATA => o_A
			 
			 
			
			 
			 
			 
		
);


U3 : registradores PORT MAP (
	       i_CLK => i_CLK,
           i_dATA => w_saida_01,
			  I_EN => i_EN,
          
			 o_DATA => o_B
			 
			 
			 );
			 
U4 : registradores PORT MAP (
	       i_CLK => i_CLK,
            i_dATA => w_saida_02,
				I_EN => i_EN,
          
			 o_DATA => o_C
			 
			 );


END behavior;