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
  fprintf(1,'\n Ganho: %.4fdB \n',meas);
  
  y = (meas-objetivo)^2;
  %fprintf(1,'\n Custo: %.4f \n',y);
  gain = meas;

endfunction
