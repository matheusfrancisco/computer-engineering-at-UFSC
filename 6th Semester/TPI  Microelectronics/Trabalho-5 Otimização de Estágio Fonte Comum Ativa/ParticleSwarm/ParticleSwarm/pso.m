clc;
clear;
warning('off','all');

%=======================================
%=======================================
%+ vetor de  valores minimos e maximos +
%=======================================
%%Vin, Wn , Ln, Wp , Lp ,Iref

lb = [1 ,3  ,1.5   ,3     ,1.5    ,1];
ub = [5 ,100,20    ,100   ,20     ,200000 ];
%Configurações
options = optimoptions('particleswarm');

options.Display = 'iter';
options.MaxIter = 1000; 
options.SwarmSize = 5;
options = optimoptions(options,'PlotFcn',@pswplotbestf);

hybridopts = psoptimset('patternsearch');
hybridopts.MaxIter = 150;
%hybridopts = optimoptions('patternsearch','Display','iter','MaxIter',200);

options = optimoptions(options,'HybridFcn',{@patternsearch,hybridopts}); 

y = particleswarm(@cost_function,6,lb,ub,options);

fprintf(1,'\n\n\nFim ====\n')
[fcust, gain]=cost_function(y);

fprintf(1,'\n Custo:%f e Ganho:%f dB',fcust,gain);
fprintf(1,'\n inDC=%f   Wn=%fu   Ln=%fu   Wp=%fu Lp=%fu Iref=%fu\n',y(1),y(2),y(3),y(4),y(5),y(6))
