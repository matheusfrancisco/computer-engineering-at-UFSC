function [] = run_netlists ()
system('XVIIx64.exe -b ..\LTSPICE\generated_netlist_OP.cir"');
system('XVIIx64.exe -b ..\LTSPICE\generated_netlist_AC.cir"');
end
