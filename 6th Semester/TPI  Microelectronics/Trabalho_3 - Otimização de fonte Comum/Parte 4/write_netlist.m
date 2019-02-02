function[retval] = write_netlist(x)


fid =fopen( 'generated_netlist.cir','w');

fprintf(fid,'*Netlist_teste\n');

fprintf(fid,'Vgs1 in N001 AC 1 \n');
fprintf(fid,'VGS N001 0 %.4f \n',x(2));
fprintf(fid,'M§N_1u Vout in 0 0 N_1u l=%.4fu w=%.4fu \n',x(4),x(3));
fprintf(fid,'RD VDD Vout %.4f \n',x(1));
fprintf(fid,'VDS VDD 0 5V \n');
fprintf(fid,'.model NMOS NMOS \n');
fprintf(fid,'.model PMOS PMOS \n');
fprintf(fid,'.lib C:\\Program Files (x86)\\LTC\\LTspiceIV\\lib\\cmp\\standard.mos \n');
fprintf(fid,'.include cmosedu_models.txt \n');
fprintf(fid,'.ac dec 10 1 1Mega\n');
fprintf(fid,'.measure AC GAIN FIND V(vout) AT = 1 \n');
fprintf(fid,'.backanno \n');
fprintf(fid,'.end \n');


fclose(fid);

endfunction
