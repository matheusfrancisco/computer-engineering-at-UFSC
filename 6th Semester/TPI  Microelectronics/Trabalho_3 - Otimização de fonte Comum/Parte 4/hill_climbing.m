function [xoptim ,fval, excotim] = hill_climbing(iterations)
%=======================================
%+++++ Minimos valores +++++++++++++++++
%=======================================
RD_lb = 100; 
Vgs_lb =1;
W_lb = 3;
L_lb = 1.5;
%=======================================
%+++++ Maximos valores +++++++++++++++++
%=======================================
RD_ub = 100000;
Vgs_ub = 5;
W_ub = 100;
L_ub=10;
%=======================================
%=======================================
%+ vetor de  valores minimos e maximos +
%=======================================
lb =[RD_lb Vgs_lb W_lb L_lb];
ub = [RD_ub Vgs_ub W_ub L_ub];
%=======================================
%+ Iniciando vetores aleatorios ++++++++
%=======================================

RD  = RD_lb + (RD_ub - RD_lb)*rand;
Vgs = Vgs_lb + (Vgs_ub - Vgs_lb)*rand;
W   = W_lb + (W_ub - W_lb)*rand;
L   = L_lb + (L_ub - L_lb)*rand;
%=======================================
%lim = [RD_lb,RD_ub,Vgs_lb,Vgs_ub,W_lb,W_ub,L_lb,L_ub];

x = [RD,Vgs,W,L];
%=======================================

% Calculando o primeiro custo
[custo_atual,gain, exc] = cost_function(x); 

printf('\t Primeiro custo: %f \t Ganho Atual: %f \t Excursao saida: %.2f\n',custo_atual,gain,exc);
y_history_cost = zeros(1,iterations);

for i=1:iterations    
    conv = 3*i/iterations;
    x_modificado = zeros(1,numel(x));
    
    for k=1:numel(x)
        x(k) = x(k)+ exp(-conv)*randn*(ub(k) - lb(k));
         while (x(k) < lb(k) || x(k) > ub(k))
             x(k) = x(k) + exp(-conv)*randn*(ub(k) - lb(k));
         endwhile
        x_modificado(k) = x(k);
    endfor  
    
	  [custo_novo,gain, exc] = cost_function(x_modificado);
    fprintf(1,'iteration: %d \t Custo Novo %f \t Novo Ganho: %f \t Nova Excursao de Saida: %f\n',i,custo_novo,gain,exc);
    y_history_cost(i)= custo_novo;
    fflush(stdout);
    if (custo_novo < custo_atual)
       bestGain = gain;   
       custo_atual = custo_novo;
       best_X = x_modificado;   
       x = x_modificado;
       otima = exc;
    endif
    fprintf(1,'\n *** Melhor Custo: %f *** \t',custo_atual);

endfor
plot(y_history_cost,'.');
hold on;
grid;
xoptim = best_X;
fval = custo_atual;
excotim = otima;

fprintf(1,'\n *** Excursao de saida: %f *** \t',excotim);

fprintf(1,'\n= Fim de Simulacao =\n Ganho:%.2fdB \n com  RD=%.2f   VGS=%.2f   W=%.2f   L=%.2f\n',bestGain, xoptim(1),xoptim(2),xoptim(3),xoptim(4))

endfunction