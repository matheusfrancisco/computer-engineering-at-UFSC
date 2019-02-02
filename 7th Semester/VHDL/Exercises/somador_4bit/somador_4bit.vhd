library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;



ENTITY somador_4bit  is
	port (
		 i_A0, i_B0, i_C : in std_logic_vector (3 downto 0);
		 
		 i_A1, i_B1 :in std_logic_vector (3 downto 0); 
		 i_A2, i_B2 :in std_logic_vector (3 downto 0); 
		 i_A3, i_B3 :in std_logic_vector (3 downto 0);  
	   
		o_C   : out std_logic_vector (3 downto 0);
		
	    o_Y0  : out std_logic_vector (3 downto 0);
	    o_Y1  : out std_logic_vector (3 downto 0);
		 o_Y2  : out std_logic_vector (3 downto 0);
		 o_Y3  : out std_logic_vector (3 downto 0)
		
		
		


		
	);
end somador_4bit;

ARCHITECTURE behavior of somador_4bit is


 
signal w_C1: std_logic_vector (3 downto 0);
signal w_C2: std_logic_vector (3 downto 0);
signal w_C3: std_logic_vector (3 downto 0);


		
component somador_completo is
port (
		
     i_A, i_B, i_C: in std_logic_vector (3 downto 0);
	   
		o_C, o_Y : out std_logic_vector (3 downto 0)
	
);
end component;


		

		
BEGIN 

	U1 : somador_completo PORT MAP (
		    i_A=> i_A0,
          i_B => i_B0,
			 i_C => i_C,
			 o_Y => o_Y0,
			 o_C => W_C1
			 
			 
			 
			 
);
		
	U2 : somador_completo PORT MAP (
		    i_A=> i_A1,
          i_B => i_B1,
			 i_C => W_C1,
			 o_Y => o_Y1,
			 o_C => W_C2
			 
			 
			 
			
			 
			 
			 
		
);

U3 : somador_completo PORT MAP (
		    i_A=> i_A2,
          i_B => i_B2,
			 i_C => W_C2,
			 o_Y => o_Y2,
			 o_C => W_C3
			 
			 

);

U4 : somador_completo PORT MAP (
		    i_A=> i_A3,
          i_B => i_B3,
			 i_C => W_C3,
			 o_Y => o_Y3,
			 o_C => O_C
			 
			 
);



END behavior;