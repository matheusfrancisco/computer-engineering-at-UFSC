library IEEE;
use IEEE.std_logic_1164.all;


entity circuito_digital is port
(        
      i_A, i_B, i_C, i_D : in STD_LOGIC;
	   
		o_E : out std_LOGIC

);

end circuito_digital;

architecture Behavioral of circuito_digital is

signal w_and : std_logic;


begin 

w_and <= i_A and I_B;
o_E <= not w_and or not I_C or I_D;
end behavioral;