library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity OR4x1VEC is 


port (
             i_A  : in STD_LOGIC_vector (3 downto 0);
				
				 
				 o_B  : out std_LOGIC
				 
				 );
				 
end OR4x1VEC;

architecture  behavioral of OR4x1VEC is

begin 
o_B <= i_A(0) OR i_A (1) OR i_A(2) OR i_A (3);

end behavioral;