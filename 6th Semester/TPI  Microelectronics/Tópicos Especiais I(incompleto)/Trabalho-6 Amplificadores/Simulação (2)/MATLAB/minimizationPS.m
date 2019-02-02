clc;
clear;
warning('off','all');

cost = @cost_function;

%ordem dos parametros Wp,Lp,Wn,Ln,C,Iref
lb = [3     ,1.5    ,3      ,1.5    ,0.1    ,20];
ub = [50    ,50     ,50     ,50     ,5      ,100];

%Configurações
options = optimoptions('particleswarm');
    
options.Display = 'iter';
options.MaxIterations = 200; 
options.SwarmSize = 50;
options = optimoptions(options,'PlotFcn',@pswplotbestf);
hybridopts = optimoptions('patternsearch','Display','iter','MaxIterations',200);
options = optimoptions(options,'HybridFcn',{@patternsearch,hybridopts}); 

[optimusPrime,optimusPrimeV] = particleswarm(cost,6,lb,ub,options);

fprintf(1,'\n\n\nFim da Simulação ==========================================\n')
cost_function(optimusPrime);
fprintf(1,'\nCom  Wp=%f   Lp=%fu   Wn=%fu   Lp=%fu C=%fp Iref=%fu\n\n\n',optimusPrime(1),optimusPrime(2),optimusPrime(3),optimusPrime(4),optimusPrime(5),optimusPrime(6))
