function [] = run_netlist ()
system('./ltspice.txt -b generated_netlist.cir');
end
