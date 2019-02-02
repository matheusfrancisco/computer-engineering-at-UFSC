library IEEE;
use IEEE.std_logic_1164.all;


entity Registrador is
 port
(        
      i_EN, i_CLK : in STD_LOGIC;
	   
		i_DATA : in std_logic_vector(7 downto 0);
		o_DATA : out std_logic_vector(7 downto 0));

end Registrador;

architecture Behavioral of Registrador is
begin 
process (i_CLK)
begin 


if RISING_EDGE (i_CLK) then 
   
	if(i_EN = '1') then
	
	o_DATA <= i_DATA;
	
	end if;
	end if;
	
	end process;

end behavioral;