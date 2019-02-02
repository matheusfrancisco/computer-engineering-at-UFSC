clear all
close all

load saida_canal;

saida = [1 -2.18063854887472 0.680555800119495 1.74903899388325 -1.67389021284899 0.438265142261980 0 0 0 0 0 0];
plot_figura(saida_canal);



figura = filter([1 1 0 0 0 0 0 0 0 0 0 0 ],saida,saida_canal);
plot_figura(figura);



