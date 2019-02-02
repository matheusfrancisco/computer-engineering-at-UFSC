 % Cost function
 % Esta funcao ira receber um vetor onde sao os valores de entrada 
 % respectivamente RD, VGS, W, L em seguida ira escrever um netlist, complilar o 
 % netlist no simulador ltspice e ler o log buscando o ganho quando a freq = 1
function [y gain] = cost_function(x)
  printf('\n');

  write_netlist(x);

  run_netlist();

  meas = read_log;
  objetivo = 100;
  meas = 10^(meas/20);
  fprintf(1,'\n Ganho: %.4f \n',meas);
 
  y = 1/(meas-objetivo);
  %fprintf(1,'\n Custo: %.4f \n',y);
  gain = meas;

endfunction
