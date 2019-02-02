function [retval] = write_netlists (parameters,type)

%ordem dos parametros Wp,Lp,Wn,Ln,C,Iref
dir = ['..\\LTSPICE\\generated_netlist_' type '.cir'];
fid = fopen(dir,'w');

fprintf(fid,'* C:\\Users\\Jonas\\Google Drive\\ENC\\9\\MicroEletronica\\Otimização Muller\\Simulação\\inicial.asc\n');
fprintf(fid,'* v = [%f %f %f %f %f %f ]\n',parameters(1),parameters(2),parameters(3),parameters(4),parameters(5),parameters(6));
fprintf(fid,'I1 Vg857 Vss {Iref}\n');
fprintf(fid,'M3 Vg43Vd1 Vg43Vd1 Vss Vss N_1u l={Ln} w={Wn}\n');
fprintf(fid,'C1 Vg6Vd24 out {C}\n');
fprintf(fid,'V1 Vdd 0 2.5\n');
fprintf(fid,'V2 Vss 0 -2.5\n');
fprintf(fid,'V3 in+ 0 AC 1\n');
fprintf(fid,'C2 out 0 1p\n');
fprintf(fid,'M1 Vg43Vd1 0 Vd5Vs12 Vd5Vs12 P_1u l={Lp} w={Wp}\n');
fprintf(fid,'M4 Vg6Vd24 Vg43Vd1 Vss Vss N_1u l={Ln} w={Wn}\n');
fprintf(fid,'M6 out Vg6Vd24 Vss Vss N_1u l={Ln} w={Wn}\n');
fprintf(fid,'M2 Vg6Vd24 in+ Vd5Vs12 Vd5Vs12 P_1u l={Lp} w={Wp}\n');
fprintf(fid,'M7 out Vg857 Vdd Vdd P_1u l={Lp} w={Wp}\n');
fprintf(fid,'M5 Vd5Vs12 Vg857 Vdd Vdd P_1u l={Lp} w={Wp}\n');
fprintf(fid,'M8 Vg857 Vg857 Vdd Vdd P_1u l={Lp} w={Wp}\n');
if(strcmp(type,'OP'))
    fprintf(fid,'.OP\n');
elseif (strcmp(type,'AC'))
    fprintf(fid,'.ac dec 100 1 1MEG\n');
else 
    error('Write Netlist com parametro invalido')
end
fprintf(fid,'.include cmosedu_models.txt\n');
fprintf(fid,'.param Wp=%fu\n',parameters(1));
fprintf(fid,'.param Lp=%fu\n',parameters(2));
fprintf(fid,'.param Wn=%fu\n',parameters(3));
fprintf(fid,'.param Ln=%fu\n',parameters(4));
fprintf(fid,'.param C=%fp\n',parameters(5));
fprintf(fid,'.param Iref=%fu\n',parameters(6));
fprintf(fid,'.meas AC Gain1Hz FIND V(out) AT 1\n');
fprintf(fid,'.backanno\n');
fprintf(fid,'.end\n');

fclose(fid);
end
