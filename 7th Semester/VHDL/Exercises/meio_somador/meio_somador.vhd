library IEEE;
use IEEE.std_logic_1164.all;


entity meio_somador is port
(        
      i_A, i_B : in STD_LOGIC;
	   
		o_C, o_Y : out std_LOGIC

);

end meio_somador;

architecture Behavioral of meio_somador is




begin 

o_Y <= i_A xor I_B;
o_C <= i_A and i_B;
end behavioral;