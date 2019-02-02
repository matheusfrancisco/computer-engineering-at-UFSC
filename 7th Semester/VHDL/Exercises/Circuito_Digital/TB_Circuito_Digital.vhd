LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;


ENTITY TB_circuito_digital IS
END TB_circuito_digital;

ARCHITECTURE behavior OF TB_circuito_digital IS
   
   component circuito_digital
    port( 
      i_A, i_B, i_C, i_D : in STD_LOGIC;
	   
		o_E : out std_LOGIC);
    
      
end component;
   
   signal i_A : std_LOGIC;
	signal i_B : std_LOGIC;
	signal i_C : std_LOGIC;
	signal i_D : std_LOGIC;
	signal o_E : std_LOGIC;

	
   
   
   
BEGIN
    
   Teste: circuito_digital PORT MAP (
         i_A => i_A,
         i_B => i_B,
			i_C => i_C,
			i_D => i_D,
			o_E => o_E
        );      

   
 stin_proc: process
	begin
wait for 5 ns; 
i_A <= '1'; 
i_B <= '1'; 
i_C <= '0'; 
i_D <= '0';
wait for 5 ns; 
i_A <= '0'; 
i_B <= '1'; 
i_C <= '0'; 
i_D <= '1';
	end process;

END;