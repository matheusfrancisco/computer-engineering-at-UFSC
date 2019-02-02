function [y,value] = cost_function (x)

write_netlist(x);
run_netlist;
meas = read_log;
objective = 100;
fprintf(1,'\n Ganho: %.4fdB',meas)
y = (meas - objective)^2;
value = meas;

end
