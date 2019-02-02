ValorCusto = 1000;
function  verificaCusto(fvalor gain)

if(fvalor < ValoCusto)
    ValorCusto = fvalor;
    gainOtimo = gain;
end

fprintf(1,'\n Ganho: %.4f \n',gainOtimo);
fprintf(1,'\n Custo minimo: %.4f \n',fvalor);
end