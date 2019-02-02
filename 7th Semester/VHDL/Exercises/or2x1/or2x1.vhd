library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity OR2x1 is 


port (
             i_A  : in STD_LOGIC;
				 i_B  : in STD_LOGIC;
				 o_C : out STD_LOGIC
				 
				 );
				 
end OR2x1;

architecture  behavioral of OR2x1 is

begin 
o_C <= i_A OR i_B;

end behavioral;