function[retval] = write_netlist(x)

%Vetor X =  Vin , Wn , Ln , Wp, Lp, Iref 

fid =fopen('generated_netlist.cir','w');

fprintf(fid,'*Netlist_teste\n');

fprintf(fid,'Vd Vdd 0 5V \n');
fprintf(fid,'M1 Vdd N001 N001 Vdd P_1u l=%fu w=%fu \n',x(5),x(4));
fprintf(fid,'M2 Vdd N001 vout Vdd P_1u l=%fu w=%fu \n',x(5),x(4));
fprintf(fid,'Iref N001 0 %fuA\n',x(6));
fprintf(fid,'M3 vout N002 0 0 N_1u l=%fu w=%fu \n',x(3),x(2));
fprintf(fid,'VGS N003 0 %f\n',x(1));
fprintf(fid,'Vg N002 N003 AC 1\n');
fprintf(fid,'.model NMOS NMOS\n');
fprintf(fid,'.model PMOS PMOS\n');
fprintf(fid,'.lib C:\\Program Files (x86)\\LTC\\LTspiceIV\\lib\\cmp\\standard.mos\n');
fprintf(fid,'.ac oct 1 1 1MEG\n');
fprintf(fid,'.include cmosedu_models.txt \n');
fprintf(fid,'.meas AC gain FIND V(vout) AT 1 \n');
fprintf(fid,'.backanno \n');
fprintf(fid,'.end \n');

fclose(fid);

end
