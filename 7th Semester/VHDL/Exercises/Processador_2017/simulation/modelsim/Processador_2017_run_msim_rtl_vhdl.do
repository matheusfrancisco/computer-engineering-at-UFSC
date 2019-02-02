transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/luize/Desktop/Processador_2107/ula.vhd}
vcom -93 -work work {C:/Users/luize/Desktop/Processador_2107/registrador.vhd}
vcom -93 -work work {C:/Users/luize/Desktop/Processador_2107/processador.vhd}
vcom -93 -work work {C:/Users/luize/Desktop/Processador_2107/caminho_dados.vhd}
vcom -93 -work work {C:/Users/luize/Desktop/Processador_2107/caminho_controle.vhd}
vcom -93 -work work {C:/Users/luize/Desktop/Processador_2107/banco_registrador.vhd}

