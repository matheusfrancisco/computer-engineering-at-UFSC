function [] = run_netlists ()
system('./ltspice.txt -b generated_netlist_OP.cir');
system('./ltspice.txt -b generated_netlist_AC.cir');

end
