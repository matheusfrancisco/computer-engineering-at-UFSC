LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;


ENTITY TB_Registradores IS
END TB_Registradores;

ARCHITECTURE behavior OF TB_Registradores IS
   
   component Registradores
    port( 
      i_EN, i_CLK : in STD_LOGIC;
	   
		i_DATA : in std_logic_vector(7 downto 0);
		o_DATA : out std_logic_vector(7 downto 0));

    
      
end component;
   
   signal i_EN : std_LOGIC;
	signal i_CLK : std_LOGIC;
	signal i_DATA :  std_logic_vector(7 downto 0);
		
   signal o_DATA :  std_logic_vector(7 downto 0);


	
   
   
   
BEGIN
    
   Teste: Registradores PORT MAP (
         i_EN => i_EN,
         i_CLK => i_CLK,
			i_DATA => i_DATA,
		   o_DATA => o_DATA
        );      

   
 process
	begin

 
i_CLK <= '0';
wait for 5 ns;
i_CLK <= '1';
wait for 5 ns;
end process;
 
 
 
 
 
 stin_proc: process
	begin

 

wait for 100 ns;

i_DATA <= "00101101"; 
i_EN <= '1'; 

wait for 20 ns; 
i_EN <= '0'; 
 
i_DATA <= "10110101";

wait for  35 ns;
wait for 20 ns; 
i_EN <= '0'; 
 
i_DATA <= "00011101";
	end process;

END;