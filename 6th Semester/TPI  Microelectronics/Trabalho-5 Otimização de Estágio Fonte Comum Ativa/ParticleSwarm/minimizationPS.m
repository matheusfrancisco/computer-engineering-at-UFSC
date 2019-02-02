clc;
clear;
warning('off','all');

cost = @cost_function;

lb = [1 ,3  ,1.5   ,3     ,1.5    ,1];
ub = [5 ,100,20    ,100   ,20     ,200000 ];

%Configurações
options = optimoptions('particleswarm');

options.Display = 'iter';
options.MaxIterations = 1000; 
options.SwarmSize = 3;
options = optimoptions(options,'PlotFcn',@pswplotbestf);
hybridopts = optimoptions('patternsearch','Display','iter','MaxIterations',200);
options = optimoptions(options,'HybridFcn',{@patternsearch,hybridopts}); 

[optimusPrime,optimusPrimeV] = particleswarm(cost,6,lb,ub,options);

fprintf(1,'\n\n\nFim da Simulação ==========================================\n')
cost_function(optimusPrime);
fprintf(1,'\nCusto:%f com  VinDC=%f   Wn=%fu   Ln=%fu   Wp=%fu Lp=%fu Iref=%fu\n',optimusPrimeV,optimusPrime(1),optimusPrime(2),optimusPrime(3),optimusPrime(4),optimusPrime(5),optimusPrime(6))
