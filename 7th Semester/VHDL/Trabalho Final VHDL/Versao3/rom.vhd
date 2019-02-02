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
    ROM(0) <= "0000100000001010";    -- LDI R0, 10;			    ## QUANTIDADE DE INGREDIENTES
    ROM(1) <= "0100000000001010";    -- STO R0, 10;			    ## QUANTIDADE DE CAFE
    ROM(2) <= "0100000000001011";    -- STO R0, 11;			    ## QUANTIDADE DE LEITE
    ROM(3) <= "0100000000001101";    -- STO R0, 13;			    ## QUANTIDADE DE CHOCOLATE
    ROM(4) <= "0010100000000000";    -- IN R0, 0;			      ## PEGA ENTRADA 
    ROM(5) <= "0100000000000000";    -- STO R0, 00;			    ## CARREGA ENTRADA
    ROM(6) <= "0000101000000001";    -- LDI R1, 1;		      ## 
    ROM(7) <= "0101110000100000";    -- AND R2, R0, R1;		  ## FAZ UM AND PARA VERIFICAR SE A ENTRADA E VALIDA
    ROM(8) <= "0100110000000100";    -- JZ R2, 4;			      ## SE NAO TIVER VOLTA PEDIR UMA ENTRADA
    ROM(9) <= "0000101000010001";    -- LDI R1, 17;			    ## COPO GRANDE CASO TENHA COPO GRANDE [10001]
    ROM(10) <= "0101110000100000";    -- AND R2, R0, R1;	    ## 
    ROM(11) <= "1010011011000000";    -- CMP R3, R1, R2;	    ## 
    ROM(12) <= "0101001000100001";    -- JE R1, 33; 		      ## PULA PARA ROTINA DO COPO GRANDE
    ROM(13) <= "0000101000000011";    -- LDI R1, 3; 		      ## CAFE COM LEITE [00011]
    ROM(14) <= "0101110000100000";    -- AND R2, R0, R1;	    ##
    ROM(15) <= "1010011011000000";    -- CMP R3, R1, R2;	    ##	
    ROM(16) <= "0101001000011011";    -- JE R1, 27;			    ## PULA PARA ROTINA CAFE COM LEITE
    ROM(17) <= "0000101000000101";    -- LDI R1, 5;			    ## CAFE MOCHACCINO [00101]
    ROM(18) <= "0101110000100000";    -- AND R2, R0, R1;	    ##	
    ROM(19) <= "1010011011000000";    -- CMP R3, R1, R2;	    ##
    ROM(20) <= "0101001000100100";    -- JE R1, 36;			    ## PULA PRA ROTINA MOCHACCINO
    ROM(21) <= "0011100000001010";    -- LD R0, 10; 		      ## Inicia a Rotina de inserir Cafe	
    ROM(22) <= "0100100000101001";    -- JZ R0, 41; 		      ## FALTA CAFE
    ROM(23) <= "0000101000000001";    -- LDI R1, 1;		      ## 
    ROM(24) <= "0001110000100000";    -- SUB R2, R0, R1;     ## 
    ROM(25) <= "0100010000001010";    -- STO R2, 10;		      ##
    ROM(26) <= "0011000000110001";    -- JI 49;			      	##
    ROM(27) <= "0011100000001011";    -- LD R0, 11;			    ## Inicia a Rotina de Inserir Leite
    ROM(28) <= "0100100000101001";    -- JZ R0, 41;			    ## FALTA LEITE
    ROM(29) <= "0000101000000001";    -- LDI R1, 1;			    ##
    ROM(30) <= "0001110000100000";    -- SUB R2, R0, R1; 	  ##
    ROM(31) <= "0100010000001011";    -- STO R2, 11;		      ##
    ROM(32) <= "0011000000010101";    -- JI 21;				      ## VOLTA PARA COLOCAR CAFE
    ROM(33) <= "0000101000000010";    -- LDI R1, 2;			    ## INICIO ROTINA DO COPO GRANDE
    ROM(34) <= "0010001000000000";    -- OUT R1, 0;			    ## ACENDE O LED DO COPO GRANDE
    ROM(35) <= "0011000000001101";    -- JI 13;				      ## VOLTA  PRA DEPOIS DA ROTINA COPO GRANDE 
    ROM(36) <= "0011100000001101";    -- LD R0, 13;			    ## Inicia a Rotina de Inserir Chocolate
    ROM(37) <= "0100100000101001";    -- JZ R0, 41;		    	## FALTA CHOCOLATE
    ROM(38) <= "0000101000000001";    -- LDI R1, 1;		    	## 
    ROM(39) <= "0001110000100000";    -- SUB R2, R0, R1;	    ##
    ROM(40) <= "0011000000011011";    -- JI 27;				      ## VOLTA PARA INSERIR LEITE 
    ROM(41) <= "0000111000000001";    -- LDI R3, 1; 		      ## Led de reposicao e acesso para informar falta
    ROM(42) <= "0010011000000000";    -- OUT R3, 0;			    ##							
    ROM(43) <= "0000101000001000";    -- LDI R1, 8;	  	    ## Botao de reposicao
    ROM(44) <= "0010100000000000";    -- IN R0, 0;		        ## Pego entrada 
    ROM(45) <= "0101110010000000";    -- AND R2,R1,R0;       ## Faz um and com R1 salva em R2
    ROM(46) <= "1010011011000000";    -- CMP R3,R1,R2;		    ## Compara
    ROM(47) <= "0101001000110100";    -- JE R1, 52;			    ## Se chave e igual vou para ROTINA DE INSERIR INGREDIENTES
    ROM(48) <= "0011000000101011";    -- JI 43;				      ## Se nao espero uma entrada de reposicao
    ROM(49) <= "0000100000000100";    -- LDI R0, 4;			    ## Acende o Led para informar o Preparo
    ROM(50) <= "0010000000000000";    -- OUT R0, 0;		    	## 
    ROM(51) <= "0011000000111010";    -- JI 58;              ##
    ROM(52) <= "0000100000001010";    -- LDI R0, 10;			    ## Ingredientes
    ROM(53) <= "0100000000001010";    -- STO R0, 10;			    ## Quantidade de cafe
    ROM(54) <= "0100000000001011";    -- STO R0, 11;			    ## Quantidade de leite
    ROM(55) <= "0100000000001101";    -- STO R0, 13;			    ## Coloca quantidade de chocolate
    ROM(56) <= "0000111000000000";    -- LDI R3, 0;				##
    ROM(57) <= "0010011000000000";    -- OUT R3, 0;				##
    ROM(58) <= "0000101000000000";    -- LDI R1, 0;			    ##
    ROM(59) <= "0010001000000000";    -- OUT R1, 0;				  ##
    ROM(60) <= "0011000000000100";    -- JI 4;					    ## Volta no comeco	
   
   
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
