function [meas] = read_log_AC ()

%Abre arquivo na pasta localizada no diretório superior chamada LTSPICE
fid = fopen('..\LTSPICE\generated_netlist_AC.log', 'rt', 'n', 'UTF16LE');

line = fgetl(fid);
while(~feof(fid))
  line = fgetl(fid);
  elements = strsplit(line,{' ','='});
  if (strcmp(elements(1),'gain1hz:'))
     %Separa o resultado com módulo em fase de formato ('modulo'dB,'fase'º) em valores compreensíveis
     %O resultado será um elements no formato { '' 'valorganho' ',valorfaseº')' } logo o segundo elemento é o ganho
     elements = strsplit(char(elements(3)),{'(','dB'});
     meas = str2num(elements{2});
     break;
  end  
end

fclose(fid);

end
