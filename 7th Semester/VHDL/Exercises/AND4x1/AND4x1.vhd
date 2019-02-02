library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity AND4x1 is 


port (
             i_A  : in STD_LOGIC;
				 i_B  : in STD_LOGIC;
				 i_C : in STD_LOGIC;
				 i_D  : in std_LOGIC;
				 o_E  : out std_LOGIC
				 
				 );
				 
end AND4x1;

architecture  behavioral of AND4x1 is

begin 
o_E <= i_A AND i_B AND i_C AND i_D;

end behavioral;