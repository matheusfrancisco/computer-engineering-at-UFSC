function [xoptim ,fval] = hill_climbing(iterations)
%Vetor X =  Vin , Wn , Ln , Wp, Lp, Iref 
%=======================================
%+++++ Minimos valores +++++++++++++++++
%=======================================
Vin_lb = 1; 
Wn_lb =3;
Ln_lb = 1.5;
Wp_lb = 3;
Lp_lb = 1.5;
Iref_lb = 1;
%=======================================
%+++++ Maximos valores +++++++++++++++++
%=======================================
Vin_ub = 5; 
Wn_ub =100;
Ln_ub = 20;
Wp_ub = 100;
Lp_ub = 20;
Iref_ub = 200;
%=======================================
%=======================================
%+ vetor de  valores minimos e maximos +
%=======================================
lb =[Vin_lb Wn_lb Ln_lb Wp_lb Lp_lb Iref_lb];
ub = [Vin_ub Wn_ub Ln_ub Wp_ub Lp_ub Iref_ub];
%=======================================
%+ Iniciando vetores aleatorios ++++++++
%=======================================

Vin  = Vin_lb + (Vin_ub - Vin_lb)*rand;
Wn = Wn_lb + (Wn_ub - Wn_lb)*rand;
Ln   = Ln_lb + (Ln_ub - Ln_lb)*rand;
Wp   = Wp_lb + (Wp_ub - Wp_lb)*rand;
Lp =  Lp_lb + (Lp_ub - Lp_lb)*rand;
Iref = Iref_lb + (Iref_ub - Iref_lb)*rand;

%=======================================
%lim = [RD_lb,RD_ub,Vgs_lb,Vgs_ub,W_lb,W_ub,L_lb,L_ub];

x =[Vin Wn Ln Wp Lp Iref];

%=======================================

% Calculando o primeiro custo
[custo_atual,gain] = cost_function(x); 

printf('\t Primeiro custo: %f \t Ganho Atual: %f \t\n',custo_atual,gain);
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
    %x_modificado(3) = 3.3;
	  [custo_novo,gain] = cost_function(x_modificado);
    fprintf(1,'iteration: %d \t Custo Novo %f \t Novo Ganho: %f \t\n',i,custo_novo,gain);
    y_history_cost(i)= custo_novo;
    fflush(stdout);
    if (custo_novo < custo_atual)
       bestGain = gain;   
       custo_atual = custo_novo;
       best_X = x_modificado;   
       x = x_modificado;
       
    endif
    fprintf(1,'\n *** Melhor Custo: %f *** \t',custo_atual);

endfor
plot(y_history_cost,'.');
hold on;
grid;
xoptim = best_X;
fval = custo_atual;

fprintf(1,'\n= Fim de Simulacao =\n Ganho:%.2fdB \n com  RD=%.2f   VGS=%.2f   W=%.2f   L=%.2f\n',bestGain, xoptim(1),xoptim(2),xoptim(3),xoptim(4))

endfunction