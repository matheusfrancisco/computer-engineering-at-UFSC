library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;



ENTITY somador_completo  is
	port (
		 i_A, i_B, i_C : in std_logic_vector (3 downto 0);
	   
	   
		o_C, o_Y  : out std_logic_vector (3 downto 0)
	   
		


		
	);
end somador_completo;

ARCHITECTURE behavior of somador_completo is

signal w_Y: std_logic_vector (3 downto 0);
signal w_C: std_logic_vector (3 downto 0);
signal w_C1: std_logic_vector (3 downto 0);
 



		
component meio_somador is
port (
		
     i_A, i_B : in std_logic_vector (3 downto 0);
	   
		o_C, o_Y : out std_logic_vector (3 downto 0)
	
);
end component;
		

		
BEGIN 

	U1 : meio_somador PORT MAP (
		    i_A=> i_A,
          i_B => i_B,
			 o_Y => w_Y,
			 o_C => w_C
			 
			 
			 
);
		
	U2 : meio_somador PORT MAP (
	       i_A=> w_Y,
          i_B => i_C,
			 o_Y => o_Y,
			 o_C => w_C1
			 
			 
			
			 
			 
			 
		
);
o_C  <= (w_C or w_C1) + 1;


END behavior;