-- -----------------------------------------------------
-- Arquivo ROM.vhd 
-- -----------------------------------------------------
                                                        
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
   
   
   
entity ROM is 
  Generic ( 
      p_ADD_WIDTH    : INTEGER := 9; 
      p_DATA_WIDTH   : INTEGER := 16 
  ); 
  Port ( 
      i_CLK	   : in STD_LOGIC; 
      i_RST	   : in STD_LOGIC; 
      i_EN_CLK	   : in STD_LOGIC; 
      i_EN 	   : in STD_LOGIC; 
      i_ADDRESS      : in STD_LOGIC_VECTOR ((p_ADD_WIDTH-1) downto 0); 
      o_DOUT         : out STD_LOGIC_VECTOR ((p_DATA_WIDTH-1) downto 0) 
  ); 
end ROM; 
   
   
architecture Behavioral of ROM is 
      type ROM_TYPE is array(0 TO ((2**p_ADD_WIDTH)-1)) of std_logic_vector(o_DOUT'range); 
      signal ROM : ROM_TYPE := ((others=> (others=>'0'))); 
      signal w_ADDRESS	: STD_LOGIC_VECTOR(i_ADDRESS'range); 
   
  
begin 
   
   
-- -----------------------------------------------------
-- Codigo de maquina: 
-- -----------------------------------------------------
                                                        
-- .Text
    ROM(0) <= "0000100000001010";    -- LDI R0, 10;		--Linha(1)		## QUANTIDADE DE INGREDIENTES
    ROM(1) <= "0100000000001010";    -- STO R0, 10;		--Linha(2)		## QUANTIDADE DE CAFE
    ROM(2) <= "0100000000001011";    -- STO R0, 11;		--Linha(3)		## QUANTIDADE DE LEITE
    ROM(3) <= "0100000000001101";    -- STO R0, 13;		--Linha(4)		## QUANTIDADE DE CHOCOLATE
    ROM(4) <= "0010100000000000";    -- IN R0, 0;		--Linha(5)	    ## PEGA ENTRADA 
    ROM(5) <= "0100000000000000";    -- STO R0, 00;		--Linha(6)	    ## CARREGA ENTRADA
    ROM(6) <= "0000101000000001";    -- LDI R1, 1;		--Linha(7)      ## 
    ROM(7) <= "0101110000100000";    -- AND R2, R0, R1;	--Linha(8)	  	## FAZ UM AND PARA VERIFICAR SE A ENTRADA E VALIDA
    ROM(8) <= "0100110000000100";    -- JZ R2, 4;		--Linha(9)	    ## SE NAO TIVER VOLTA PEDIR UMA ENTRADA
    ROM(9) <= "0000101000000010";    -- LDI R1, 2;		--Linha(10)	    ## COPO GRANDE CASO TEN0HA COPO GRANDE [00011]
    ROM(10) <= "0101110000100000";    -- AND R2, R0, R1;	--Linha(11)    	## 
    ROM(11) <= "1010011011000000";    -- CMP R3, R1, R2;	--Linha(12)    	## 
    ROM(12) <= "0101001000011010";    -- JE R1, 26; 		--Linha(13)    	## PULA PARA ROTINA DO COPO GRANDE
    ROM(13) <= "0000101000001001";    -- LDI R1, 9; 		--Linha(14)    	## CAFÉ NORMAL [01001]
    ROM(14) <= "0101110000100000";    -- AND R2, R0, R1;	--Linha(15)    	##
    ROM(15) <= "1010011011000000";    -- CMP R3, R1, R2;	--Linha(16)    	##	
    ROM(16) <= "0101001000011110";    -- JE R1, 30;		--Linha(17)	    ## PULA PARA ROTINA CAFÉ NORMAL
    ROM(17) <= "0000101000010001";    -- LDI R1, 17;		--Linha(18)	    ## CAFE LEITE [10001]
    ROM(18) <= "0101110000100000";    -- AND R2, R0, R1;	--Linha(19)    	##	
    ROM(19) <= "1010011011000000";    -- CMP R3, R1, R2;	--Linha(20)    	##
    ROM(20) <= "0101001000100110";    -- JE R1, 38;		--Linha(21)	    ## Pula para rotina de Café com leite 
    ROM(21) <= "0000101000011001";    -- LDI R1, 25; 	--Linha(22)	    ## CAFE MOCHACCINO [11001]
    ROM(22) <= "0101110000100000";    -- AND R2, R0, R1;	--Linha(23)    	##	
    ROM(23) <= "1010011011000000";    -- CMP R3, R1, R2;	--Linha(24)    	##
    ROM(24) <= "0101001000110011";    -- JE R1, 51;		--Linha(25)	    ## Pula para rotina do mochaccino
    ROM(25) <= "0011000000000100";    -- JI 4;			--Linha(26)     ##
    ROM(26) <= "0000101000010000";    -- LDI R1,16;		--Linha(27)		## Inicio da rotina de copo grande
    ROM(27) <= "0010001000000000";    -- OUT R1,00;		--Linha(28)		##
    ROM(28) <= "0011000000001101";    -- JI 13;			--Linha(29) 	## Volta para depois do copo grand
    ROM(29) <= "0011100000001010";    -- LD R0, 10; 		--Linha(30)     ## Inicia de rotina para fazer apenas Café
    ROM(30) <= "0100100001000011";    -- JZ R0, 67; 		--Linha(31)    	## FALTA CAFÉ
    ROM(31) <= "0000101000000001";    -- LDI R1, 1;		--Linha(32)    	## 
    ROM(32) <= "0001110000100000";    -- SUB R2, R0, R1; --Linha(33)    	## 
    ROM(33) <= "0100010000001010";    -- STO R2, 10;		--Linha(34)     ##
    ROM(34) <= "0000101000000001";    -- LDI R1, 1;		--Linha(35)		##
    ROM(35) <= "0010001000000000";    -- OUT R1, 0;		--Linha(36)
    ROM(36) <= "0011000000000100";    -- JI 4;			--Linha(37)		## Fazer café
    ROM(37) <= "0011100000001011";    -- LD R0, 11;		--Linha(38)	    ## Inicia a Rotina de Inserir Café com Leite
    ROM(38) <= "0100100001010011";    -- JZ R0, 83;		--Linha(39)	    ## FALTA LEITE
    ROM(39) <= "0000101000000001";    -- LDI R1, 1;		--Linha(40)
    ROM(40) <= "0001110000100000";    -- SUB R2, R0, R1;	--Linha(41)
    ROM(41) <= "0100010000001011";    -- STO R2, 11;		--Linha(42)
    ROM(42) <= "0011100000001010";    -- LD R0, 10;		--Linha(43)		##
    ROM(43) <= "0100100001000011";    -- JZ R0, 67;		--Linha(44)		## FALTA CAFÉ
    ROM(44) <= "0000101000000001";    -- LDI R1, 1;		--Linha(45)	    ##
    ROM(45) <= "0001110000100000";    -- SUB R2, R0, R1; --Linha(46)	  	##
    ROM(46) <= "0100010000001010";    -- STO R2, 10;		--Linha(47)     ##
    ROM(47) <= "0000101000000010";    -- LDI R1, 2;		--Linha(48)		##
    ROM(48) <= "0010001000000000";    -- OUT R1, 0;		--Linha(49)		##
    ROM(49) <= "0011000000000100";    -- JI 4;			--Linha(50)	    ## Volta no inicio
    ROM(50) <= "0011100000001101";    -- LD R0, 13;		--Linha(51)	    ## Inicia a Fazer Mochaccino
    ROM(51) <= "0100100001001011";    -- JZ R0, 75;		--Linha(52)    	## FALTA CHOCOLATE
    ROM(52) <= "0000101000000001";    -- LDI R1, 1;		--Linha(53)    	## 
    ROM(53) <= "0001110000100000";    -- SUB R2, R0, R1;	--Linha(54)    	##
    ROM(54) <= "0100010000001101";    -- STO R2, 13;		--Linha(55)		##
    ROM(55) <= "0011100000001010";    -- LD R0, 10;		--Linha(56)		##
    ROM(56) <= "0100100001000011";    -- JZ R0, 67;		--Linha(57)		##
    ROM(57) <= "0001110000100000";    -- SUB R2, R0, R1;	--Linha(58)		##
    ROM(58) <= "0100010000001010";    -- STO R2, 10;		--Linha(59)		##
    ROM(59) <= "0011100000001011";    -- LD R0, 11;		--Linha(60)		##
    ROM(60) <= "0100100001010011";    -- JZ R0, 83;		--Linha(61)		##
    ROM(61) <= "0001110000100000";    -- SUB R2, R0, R1;	--Linha(62)		##
    ROM(62) <= "0100010000001011";    -- STO R2, 11; 	--Linha(63)		##
    ROM(63) <= "0000101000000100";    -- LDI R1, 4;		--Linha(64)		##
    ROM(64) <= "0010001000000000";    -- OUT R1, 0;		--Linha(65)		##
    ROM(65) <= "0011000000000100";    -- JI 4;			--Linha(66)	    ## Volta para o inicio 
    ROM(66) <= "0000111001000000";    -- LDI R3, 64; 	--Linha(67)     ## LED AVISANDO QUE FALTA CAFÉ
    ROM(67) <= "0010011000000000";    -- OUT R3, 0;		--Linha(68)	    ##							
    ROM(68) <= "0000101000001000";    -- LDI R1, 8;	  	--Linha(69)    	## Botao de reposicao
    ROM(69) <= "0010100000000000";    -- IN R0, 0;		--Linha(70)     ## Pego entrada 
    ROM(70) <= "0101110010000000";    -- AND R2,R1,R0;   --Linha(71)    	## Faz um and com R1 salva em R2
    ROM(71) <= "1010011011000000";    -- CMP R3,R1,R2;	--Linha(72)	    ## Compara
    ROM(72) <= "0101001001010010";    -- JE R1, 82;		--Linha(73)	    ## Inseri Café
    ROM(73) <= "0011000001000010";    -- JI 66;			--Linha(74)	    ## Se nao espero uma entrada de reposicao
    ROM(74) <= "0000111000100000";    -- LDI R3, 32; 	--Linha(75)     ## LED AVISANDO QUE FALTA CHOCOLATE
    ROM(75) <= "0010011000000000";    -- OUT R3, 0;		--Linha(76)	    ## 							
    ROM(76) <= "0000101000001000";    -- LDI R1, 8;	  	--Linha(77)    	## Botao de reposicao
    ROM(77) <= "0010100000000000";    -- IN R0, 0;		--Linha(78)     ## Pego entrada 
    ROM(78) <= "0101110010000000";    -- AND R2,R1,R0;   --Linha(79)    	## Faz um and com R1 salva em R2
    ROM(79) <= "1010011011000000";    -- CMP R3,R1,R2;	--Linha(80)	    ## Compara
    ROM(80) <= "0101001001011000";    -- JE R1, 88;		--Linha(81)	    ## Inseri Chocolate
    ROM(81) <= "0011000001001010";    -- JI 74;			--Linha(82)	    ## Se nao espero uma entrada de reposicao
    ROM(82) <= "0000111000111111";    -- LDI R3, 63; 	--Linha(83)	    ## LED AVISANDO QUE FALTA LEITE
    ROM(83) <= "0010011000000000";    -- OUT R3, 0;		--Linha(84)	    ##							
    ROM(84) <= "0000101000001000";    -- LDI R1, 8;	  	--Linha(85)    	## Botao de reposicao
    ROM(85) <= "0010100000000000";    -- IN R0, 0;		--Linha(86)     ## Pego entrada 
    ROM(86) <= "0101110010000000";    -- AND R2,R1,R0;   --Linha(87)    	## Faz um and com R1 salva em R2
    ROM(87) <= "1010011011000000";    -- CMP R3,R1,R2;	--Linha(88)	    ## Compara
    ROM(88) <= "0101001001010101";    -- JE R1, 85;		--Linha(89)	    ## Inseri Leite
    ROM(89) <= "0011000001010010";    -- JI 82;			--Linha(90)	    ## Se nao espero uma entrada de reposicao
    ROM(90) <= "0000100000001010";    -- LDI R0, 10;		--Linha(91)	    ## Ingredientes
    ROM(91) <= "0100000000001010";    -- STO R0, 10;		--Linha(92)	    ## Quantidade de café
    ROM(92) <= "0011000000000100";    -- JI 4;			--Linha(93)		##
    ROM(93) <= "0000100000001010";    -- LDI R0, 10;		--Linha(94)		## Quantidade de leite
    ROM(94) <= "0100000000001011";    -- STO R0, 11;		--Linha(95)	    ## 
    ROM(95) <= "0011000000000100";    -- JI 4;			--Linha(96)		##
    ROM(96) <= "0000100000001010";    -- LDI R0, 10;		--Linha(97)		## Quantidade de chocolate
    ROM(97) <= "0100000000001101";    -- STO R0, 13;		--Linha(98)	    ## 
    ROM(98) <= "0011000000000100";    -- JI 4;			--Linha(99)		##
   
   
  w_ADDRESS <= (others=>'0') when(i_RST = '1') else i_ADDRESS; 
	U_ROM : process(i_CLK) 
	begin 
      if rising_edge (i_CLK) then 
          if (i_RST = '1') then 
              o_DOUT <= (others=>'0'); 
          else 
              if (i_EN = '1') then 
			o_DOUT <= ROM(conv_integer(w_ADDRESS)); 
              end if; 
          end if; 
      end if; 
	end process U_ROM; 
   
end Behavioral;            
