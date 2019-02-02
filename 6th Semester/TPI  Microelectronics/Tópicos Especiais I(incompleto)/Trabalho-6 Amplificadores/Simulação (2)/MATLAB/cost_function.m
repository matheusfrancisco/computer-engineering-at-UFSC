function [cost,value] = cost_function (x)
%ordem dos parametros Wp,Lp,Wn,Ln,C,Iref

write_netlists(x,'AC');
write_netlists(x,'OP');
run_netlists();

meas = read_log_AC();

% M8 M5 M7 M2 M1 M6 M4 M3
[Vds,Vgs] = read_log_OP();
pesos = verificaSat(Vds,Vgs);

impactoSat = 0;
transistoresNSat = 0;
for i = 1:8
    impactoSat = impactoSat + 10*pesos(i);
    if(pesos(i) ~= 0)
        transistoresNSat = transistoresNSat + 1;
        fprintf(1,'\n %d Não saturado por %f',i,pesos(i));
    end
end

fprintf(1,'\nGanho: %.4fdB || Não saturados: %d',meas,transistoresNSat);
fprintf(1,'\nCom  Wp=%f   Lp=%fu   Wn=%fu   Lp=%fu C=%fp Iref=%fu\n\n\n',x(1),x(2),x(3),x(4),x(5),x(6))

cost = -2*meas + impactoSat
value = meas;

end
