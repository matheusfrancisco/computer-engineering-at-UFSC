function [fvalor,gainOtimo] = cost_function(x)
  
  write_netlist(x);

  run_netlist();
  meas = read_log; % ganho em dB
  
  gainOtimo = meas;
  fvalor =  exp(-meas);
  
 fprintf(1,'\n Ganho: %.4f \n',gainOtimo);
 fprintf(1,'\n Custo minimo: %.4f \n',fvalor);
 

end


