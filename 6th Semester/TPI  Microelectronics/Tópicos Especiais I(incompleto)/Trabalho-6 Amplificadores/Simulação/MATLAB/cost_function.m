function [cost,value] = cost_function (x)
%ordem  Wp(1),Lp(2),Wp2(3),Lp2(4),Wn(5),Ln(6),Wn2(7),Ln2(8),C(9),Iref

write_netlists(x,'AC');
write_netlists(x,'OP');
run_netlists();

[meas fase] = read_log_AC();

% M8 M5 M7 M2 M1 M6 M4 M3
[Vds,Vgs] = read_log_OP();
pesos = verificaSat(Vds,Vgs);

impactoSat = 0;
transistoresNSat = 0;
for i = 1:8
    impactoSat = impactoSat + 10*pesos(i);
    if(pesos(i) ~= 0)
        transistoresNSat = transistoresNSat + 1;
        fprintf(1,'\n %d N�o saturado por %f',i,pesos(i));
    end
end

fprintf(1,'\nGanho: %.4fdB || Não saturados: %d',meas,transistoresNSat);
fprintf(1,'\nCom  Wp=%f   Lp=%fu Wp2=%f   Lp2=%fu  Wn=%fu   Lp=%fu  Wn2=%fu   Lp2=%fu C=%fp Iref=%fu\n\n\n',x(1),x(2),x(3),x(4),x(5),x(6),x(7),x(8),x(9),x(10))
if(fase>-120 && fase<0)
cost = -2*meas + 2*impactoSat
else 
cost = 100000000
end

value = meas;
faseValue = fase;

end
