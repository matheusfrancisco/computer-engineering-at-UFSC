function [retval] = write_netlists (v,type)

%ordem dos parametros WM8(1),LM8(2),WM1(3),LM1(4),WM3(5),LM3(6),WM6(7),LM6(8),C(9),Iref
dir = ['generated_netlist_' type '.cir'];
fid = fopen(dir,'w');

fprintf(fid, '.lib C:\\users\\francisco\\My Documents\\LTspiceXVII\\lib\\cmp\\standard.mos\n');
fprintf(fid,'* v = [%f %f %f %f %f %f %f %f %f %f]\n',v(1),v(2),v(3),v(4),v(5),v(6),v(7),v(8),v(9),v(10));
fprintf(fid,'Iref vg875 ss %fu \n',v(10));
fprintf(fid,'M3 vg43vd12 vg43vd12 ss ss N_1u l=%fu w=%fu\n',v(6),v(5));
fprintf(fid,'CC out vg6vd24  %fp\n',v(9));
fprintf(fid,'vdd dd 0 2.5\n');
fprintf(fid,'vss 0 ss 2.5\n');
fprintf(fid,'V3 in+ 0 AC 1\n');
fprintf(fid,'C1 out 0 1p\n');
fprintf(fid,'M1 vg43vd12 0 vd5vs23 vd5vs23 P_1u l=%fu w=%fu\n',v(4),v(3));
fprintf(fid,'M4 vg6vd24 vg43vd12 ss ss N_1u  l=%fu w=%fu\n',v(6),v(5));
fprintf(fid,'M6 out vg6vd24 ss ss N_1u l=%fu w=%fu\n',v(8),v(7));
fprintf(fid,'M2 vg6vd24 in+ vd5vs23 vd5vs23 P_1u l=%fu w=%fu\n',v(4),v(3));
fprintf(fid,'M7 out vg875 dd dd P_1u l=%fu w=%fu\n',v(2),v(1));
fprintf(fid,'M5 vd5vs23 vg875 dd dd P_1u l=%fu w=%fu\n',v(2),v(1));
fprintf(fid,'M8 vg875 vg875 dd dd P_1u l=%fu w=%fu\n',v(2),v(1));
% fprintf(fid,'.model NMOS NMOS\n');
% fprintf(fid,'.model PMOS PMOS\n');
if(strcmp(type,'OP'))
    fprintf(fid,'.OP\n');
elseif (strcmp(type,'AC'))
    fprintf(fid,'.ac dec 100 1 10MEG\n');

else 
    error('Write Netlist com parametro invalido')
end
fprintf(fid,'.include cmosedu_models.txt\n');
fprintf(fid,'.meas AC Gain1Hz FIND V(out) AT 1\n');
fprintf(fid,'.meas AC Freq0dB FIND V(out) WHEN MAG(V(out))=1\n');
fprintf(fid,'.backanno\n');
fprintf(fid,'.end\n');

fclose(fid);
end
