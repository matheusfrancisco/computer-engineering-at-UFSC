library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity Master_conta is
 port
(        
      i_RST, i_CLK : in STD_LOGIC;
	   o_ND : out STD_LOGIC );
		
end Master_conta;

architecture Behavioral of master_conta is
Signal w_CONT :  std_logic_vector(3 downto 0);

begin 
process (i_CLK)
begin 


if RISING_EDGE (i_CLK) then 
   
	if(i_RST = '1') then
	
	o_ND <= '0';
	w_CONT <= "0000";
	
	else
	
	if (w_CONT = "0100") then
	
	o_ND <= '1';
	w_CONT <= "0000";
	
	
else 

o_ND <= '0';
w_CONT <= w_CONT + 1;

end if;
end if;
end if;
	
	

	
	
	end process;

end behavioral;