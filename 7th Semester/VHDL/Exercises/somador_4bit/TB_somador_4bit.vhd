library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;

ENTITY TB_somador_4bit IS
END TB_somador_4bit;


ARCHITECTURE behavior OF TB_somador_4bit IS

	
	
	  signal  i_A0, i_B0, i_C :  std_logic_vector (3 downto 0);
		 
		signal i_A1, i_B1 : std_logic_vector (3 downto 0); 
		signal i_A2, i_B2 : std_logic_vector (3 downto 0); 
		signal  i_A3, i_B3 : std_logic_vector (3 downto 0);  
		 
	   
	    signal	o_C  :  std_logic_vector (3 downto 0);
		
	    signal o_Y0  :  std_logic_vector (3 downto 0);
	    signal   o_Y1  :  std_logic_vector (3 downto 0);
		 signal  o_Y2  :  std_logic_vector (3 downto 0);
		 signal o_Y3  :  std_logic_vector (3 downto 0);
		
	--variaveis de output do teste
	
	COMPONENT somador_4bit IS
	
	
	
	port(
i_A0, i_B0, i_C : in std_logic_vector (3 downto 0);
		 
		 i_A1, i_B1 :in std_logic_vector (3 downto 0); 
		 i_A2, i_B2 :in std_logic_vector (3 downto 0); 
		 i_A3, i_B3 :in std_logic_vector (3 downto 0);  
	   
		o_c  : out std_logic_vector (3 downto 0);
		
	    o_Y0  : out std_logic_vector (3 downto 0);
	    o_Y1  : out std_logic_vector (3 downto 0);
		 o_Y2  : out std_logic_vector (3 downto 0);
		 o_Y3  : out std_logic_vector (3 downto 0));
		
		
	
	END COMPONENT;

	
BEGIN

	
	--Stimulus process
	teste: somador_4bit port map
	(
		 i_A0	=> i_A0,
		 i_B0 	=> i_B0,
		 i_A1	=> i_A1,
		 i_B1	=> i_B1,
		 i_A2	=> i_A2,
		 i_B2 	=> i_B2,
		 i_A3	=> i_A3,
		 i_B3 	=> i_B3,
		 i_C => i_C,
		 o_c	=> o_C,
		 o_Y0 => o_Y0,
		 o_Y1 => o_Y1,
		 o_Y2 => o_Y2,
		 o_Y3 => o_Y3
		 
		 
	);
	
	
	
	stim_proc: process
	begin
		wait for 100 ns;
		i_A0 <= "1010";
		i_B0	<= "1111";
		i_A1 <= "0000";
		i_B1	<= "1001";
		i_A2 <= "1010";
		i_B2	<= "1111";
		i_A3 <= "1010";
		i_B3	<= "1111";
		i_C <= "0000";
		
		
		wait for 10 ns;
		

		
	
		
		
		
		
		wait;
	end process;
		
end;