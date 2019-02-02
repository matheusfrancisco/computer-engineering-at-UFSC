function [retval] = write_netlist (parameters)

%ordem dos parametros RD,VGS,W,L

fid = fopen('..\LTSPICE\generated_netlist.cir','w');
fprintf(fid,'* Otimizacao de fonte modo comum\n');

fprintf(fid,'VGS_DC N001 0 %.4fV\n',parameters(2));
fprintf(fid,'M1 out in 0 0 N_1u l=%.4fu w=%.4fu\n',parameters(4),parameters(3));
fprintf(fid,'vgs_ac in N001 AC 1\n');
fprintf(fid,'Rd VDD out %.4f\n',parameters(1));
fprintf(fid,'VDD VDD 0 5V\n');
fprintf(fid,'.model NMOS NMOS\n');
fprintf(fid,'.model PMOS PMOS\n');

fprintf(fid,'.lib C:\\Users\\Jonas\\Documents\\LTspiceXVII\\lib\\cmp\\standard.mos \n');
fprintf(fid,'.include cmosedu_models.txt \n');

fprintf(fid,'.ac dec 10 1 1MEG \n');
fprintf(fid,'.meas AC Gain FIND V(out) AT 1 \n');

fprintf(fid,'.end\n');
fclose(fid);
end
