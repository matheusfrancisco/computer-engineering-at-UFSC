library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;



ENTITY master_contaa  is
	port (
		i_EN, i_CLK : in STD_LOGIC;
	   
		i_DATA : in std_logic_vector(7 downto 0);
		o_DATA : out std_logic_vector(7 downto 0);
		i_RST : in STD_LOGIC;
	   o_ND : out STD_LOGIC

		
	);
end master_contaa;

ARCHITECTURE behavior of master_contaa is
	
 

Signal w_ND :  std_LOGIC;
COMPONENT Master_conta is
	
	

	port (
		i_RST, i_CLK : in STD_LOGIC;
	   o_ND : out STD_LOGIC
		
	);
end component;		

		
component Registrador is
port (
		
      i_EN, i_CLK : in STD_LOGIC;
	   
		i_DATA : in std_logic_vector(7 downto 0);
		o_DATA : out std_logic_vector(7 downto 0)
	);
end component;
  
		
BEGIN 

	U1 : Master_conta PORT MAP (
		    i_RST => i_RST,
          i_CLK => i_CLK,
			 o_ND => w_ND
			 
			 
			 
);
		
	U2 : registrador PORT MAP (
	       i_CLK => i_CLK,
          i_DATA => i_DATA,
          i_EN => w_ND,
			 o_DATA => o_DaTA
			 
			 
			
			 
			 
			 
		
);


END behavior;