function [novosParametros] = modificarParametros(parametros,boundaries,convergency)
    novosParametros = zeros(1,numel(parametros));
    myvalue = exp(-convergency);
    for i = 1:numel(parametros)
      parametros(i) = parametros(i)+ exp(-convergency)*randn*(boundaries(2+(i-1)*2)-boundaries(1+(i-1)*2));
      while (parametros(i) < boundaries(1+(i-1)*2) || parametros(i) > boundaries(2+(i-1)*2) )
          parametros(i) = parametros(i)+ exp(-convergency)*randn*(boundaries(2+(i-1)*2)-boundaries(1+(i-1)*2));
      end
      novosParametros(i) = parametros(i);
    end  
end