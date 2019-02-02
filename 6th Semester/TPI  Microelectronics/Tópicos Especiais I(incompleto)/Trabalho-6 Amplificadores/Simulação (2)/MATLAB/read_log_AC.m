function [meas] = read_log_AC ()

%Abre arquivo na pasta localizada no diret�rio superior chamada LTSPICE
fid = fopen('..\LTSPICE\generated_netlist_AC.log', 'rt', 'n', 'UTF16LE');

line = fgetl(fid);
while(~feof(fid))
  line = fgetl(fid);
  elements = strsplit(line,{' ','='});
  if (strcmp(elements(1),'gain1hz:'))
     %Separa o resultado com m�dulo em fase de formato ('modulo'dB,'fase'�) em valores compreens�veis
     %O resultado ser� um elements no formato { '' 'valorganho' ',valorfase�')' } logo o segundo elemento � o ganho
     elements = strsplit(char(elements(3)),{'(','dB'});
     meas = str2num(elements{2});
     break;
  end  
end

fclose(fid);

end
