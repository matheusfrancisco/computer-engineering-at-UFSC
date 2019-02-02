function [xoptim, fval] = hill_climbing (iterations)
clc
%[a,b] = hill_climbing(100);
%==========================================================================
RD_lb   = 100;
RD_ub   = 100000;
VGS_lb  = 1;
VGS_ub  = 5;
W_lb    = 3;
W_ub    = 100;
L_lb    = 1.5;
L_ub    = 10;
%--------------------------------------------------------------------------
RD  = RD_lb + (RD_ub-RD_lb)*rand;
VGS = VGS_lb + (VGS_ub-VGS_lb)*rand;
W   = W_lb + (W_ub-W_lb)*rand;
L   = L_lb + (L_ub-L_lb)*rand;
%==========================================================================
boudaries   = [RD_lb,RD_ub,VGS_lb,VGS_ub,W_lb,W_ub,L_lb,L_ub];
parametros  = [RD,VGS,W,L];


historia_custo = zeros(1,iterations);
custo_atual = cost_function(parametros);
for i=1:iterations
      clc  
      fprintf(1,'iteration: %d \t custo_atual %f \t',i,custo_atual);
      parametrosModificados = modificarParametros(parametros,boudaries,3*i/iterations);
      [custo_novo,ganho] = cost_function(parametrosModificados);
      historia_custo(i) = custo_novo;
      if (custo_novo < custo_atual)
        melhorGanho = ganho;
        custo_atual = custo_novo;
        melhoresParametros = parametrosModificados
        parametros = parametrosModificados;
      end
end

plot(historia_custo,'.');
xoptim = melhoresParametros;
fval = custo_atual;
hold;

fprintf(1,'\n==== Fim de Simulação ====\nGanho:%.2fdB com  RD=%.2f   VGS=%.2f   W=%.2f   L=%.2f\n',melhorGanho,xoptim(1),xoptim(2),xoptim(3),xoptim(4))
end
