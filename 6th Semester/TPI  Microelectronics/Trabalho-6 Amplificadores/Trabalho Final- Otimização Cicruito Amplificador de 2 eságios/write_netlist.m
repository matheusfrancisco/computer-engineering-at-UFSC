function [  ] = write_netlist(x)
    % vgn, wp, lp, wn, ln, wp2, lp1, iref
    system('rm *.net  1>NUL 2>NUL');
   
    fid = fopen('netlist_gerada.net', 'w', 'n', 'UTF-8');
    
    fprintf(fid, '* Netlist teste\n');
    fprintf(fid, 'vdd dd 0 2.5\n');
    fprintf(fid, 'vgs %.20f\n', x{6});
    fprintf(fid, 'M8 N001 N001 dd dd P_1u l=%.20fu w=%.20fu\n',x{3},x{2});
    fprintf(fid, 'M5 N002 N001 dd dd P_1u l=%.20fu w=%.20fu\n', x{3}, x{2});
    fprintf(fid, 'm7 out N001 dd dd P_1u l=%.20fu w=%.20fu\n', x{3}, x{2});
    fprintf(fid, 'M1 N004 0 N002 N002 P_1u l=%.20fu w=%.20fu\n', x{5}, x{4});
    fprintf(fid, 'M2 N003 in+ N002 N002 P_1u l=%.20fu w=%.20fu\n',x{},x{});
    fprintf(fid, 'M3 N004 N004 ss ss N_1u l=%.20fu w=%.20f\n',x{},x{});
    fprinft(fid,'CC out N003 %.20fp',x{});
    fprintf(fid, 'vss 0 ss 2.5\n');
    fprintf(fid, 'C1 out 0 1p\n');
    %fprintf(fid, '.model NMOS NMOS\n');
    %fprintf(fid, '.model PMOS PMOS\n');
    fprintf(fid, '.lib C:\\Program Files (x86)\\LTC\\LTspiceIV\\lib\\cmp\\standard.mos\n');
    fprintf(fid, '.include cmosedu_models.txt\n');
   
    if (x{7} == 'op')
        fprintf(fid, 'Vgs_dc vgn 0 %20f\n', x{1});
        fprintf(fid, '.op\n');
    elseif (x{7} == 'ac')
        fprintf(fid, 'Vgs_dc N002 0 %20f\n', x{1});
        fprintf(fid, 'vgs_ac vgn N002 AC 1\n');
        fprintf(fid, '.meas AC ganho FIND vdb(vout) AT=1\n');
        fprintf(fid, '.ac dec 10000 1 1000000\n');
    end
    %fprintf(fid,'.model NMOS NMOS\n');
    %fprintf(fid,'.model PMOS PMOS\n');
    fprintf(fid, '.end\n');
    %fprintf(fid, '.control\n');
    %fprintf(fid, 'run\n');
    %fprintf(fid, '.endc\n');
    
    fclose(fid);
end




* Z:\home\francisco\Files\College-UFSC\6th semester\Tópicos Especiais I -Microeletronica\Trabalho-6 Amplificadores\Trabalho Final- Otimização Cicruito Amplificador de 2 eságios\otimização.asc

vdd dd 0 2.5
M8 vg875 vg875 dd dd P_1u l=1.5u w=3u *
M5 vd5vs23 vg875 dd dd P_1u l=1.5u w=3u *
m7 out vg875 dd dd P_1u l=1.5u w=3u *
M1 vg43vd12 0 vd5vs23 vd5vs23 P_1u l=1.5u w=3u*
M2 vg6vd24 in+ vd5vs23 vd5vs23 P_1u l=1.5u w=3u*
M3 vg43vd12 vg43vd12 ss ss N_1u l=1.5u w=3u*
M4 vg6vd24 vg43vd12 ss ss N_1u l=1.5u w=3u*
Iref vg875 ss 100n *
M6 out vg6vd24 ss ss N_1u l=1.5u w=3u*
CC out vg6vd24 0.1p*
vss 0 ss 2.5 *
V§in in+ 0 AC 1*
C1 out 0 1p*
.model NMOS NMOS
.model PMOS PMOS
.lib C:\Program Files (x86)\LTC\LTspiceIV\lib\cmp\standard.mos
.ac dec 10000 1 1000000
.include cmosedu_models.txt
.meas AC Gain1Hz FIND V(out) AT 1
.backanno
.end

    
