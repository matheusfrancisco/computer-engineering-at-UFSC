clc;
clear;
warning('off','all');

cost = @cost_function;
%=======================================
%=======================================
%+ vetor de  valores minimos e maximos +
%=======================================
%ordem %ordem  Wp(1),Lp(2),Wp2(3),Lp2(4),Wn(5),Ln(6),Wn2(7),Ln2(8),C(9),Iref
lb = [3     ,1.5    ,3      ,1.5    ,3      ,1.5    ,3    ,1.5      ,0.1    ,20];
ub = [50    ,50     ,50     ,50     ,50      ,50     ,50     ,50      ,5    ,100000];


%Configura��es
options = optimoptions('particleswarm');
    
options.Display = 'iter';
options.MaxIter = 70; 
options.SwarmSize = 35;
options = optimoptions(options,'PlotFcn',@pswplotbestf);
hybridopts = psoptimset('patternsearch');
%hybridopts = optimoptions('patternsearch','Display','iter','MaxIter',200);
options = optimoptions(options,'HybridFcn',{@patternsearch,hybridopts}); 

[fval,optimusPrimeV] = particleswarm(cost,10,lb,ub,options);

fprintf(1,'\n\n\nFim da Simula��o ==========================================\n')
cost_function(fval);
fprintf(1,'\nCom  Wp=%fu   Lp=%fu Wp2=%fu   Lp2=%fu  Wn=%fu   Lp=%fu  Wn2=%fu   Lp2=%fu C=%fp Iref=%fn\n\n\n',fval(1),fval(2),fval(3),fval(4),fval(5),fval(6),fval(7),fval(8),fval(9),fval(10))
