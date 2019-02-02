function [ pesos ] = verificaSat( Vds,Vgs )
%Para os transistores PNP
for i = 1:5
  if( Vds(i) < ( Vgs(i) + 0.9))
      pesos(i) = 0;
  else
      pesos(i) = abs(Vgs(i) + 0.9 - Vds(i));
  end
end

%Para os transistores NPN
for i = 6:8
  if( Vds(i) > ( Vgs(i)- 0.8))
      pesos(i) = 0;
  else
      pesos(i) = abs(Vgs(i) - 0.8 - Vds(i));
  end
end

end

