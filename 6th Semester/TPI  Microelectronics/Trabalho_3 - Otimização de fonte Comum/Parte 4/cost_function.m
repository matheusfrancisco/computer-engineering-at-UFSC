 % Cost function
 % Esta funcao ira receber um vetor onde sao os valores de entrada 
 % respectivamente RD, VGS, W, L em seguida ira escrever um netlist, complilar o 
 % netlist no simulador ltspice e ler o log buscando o ganho quando a freq = 1
function [y gain exc] = cost_function(x)
  printf('\n');
  vgs = x(2);
  write_netlist(x);

  run_netlist();

  meas = read_log;
  objetivo = 100;
  obj=2;
  fprintf(1,'\n Ganho: %.4fdB \n',meas);
  exc = 5 -(vgs-0.8);
  y = (0.5*(meas-objetivo)^2 + 0.5*(exc-obj)^2);
  %fprintf(1,'\n Custo: %.4f \n',y);
  gain = meas;

endfunction
