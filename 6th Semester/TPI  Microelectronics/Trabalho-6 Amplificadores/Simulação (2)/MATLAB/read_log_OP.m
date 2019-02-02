function [Vds,Vgs] = read_log_OP ()
%Abre arquivo na pasta localizada no diretório superior chamada LTSPICE
fid = fopen('..\LTSPICE\generated_netlist_OP.log', 'rt', 'n', 'UTF16LE');

transistors = 1;

line = fgetl(fid);
while(~feof(fid))
  line = fgetl(fid);
  elements = strsplit(line,{' ','='});
  if (strcmp(elements(1),'Name:'))
      %ordem dos transistores M8 M5 M7 M2 M1 M6 M4 M3 => - id gs ds
      while(~strcmp(elements(1),'Vgs:'))
          line = fgetl(fid);
          elements = strsplit(line,{' ','='});
      end
      %debuga ai que tu entende bundao, mas é sofridu
      gs(transistors:(transistors + numel(elements)-2)) = elements(2:numel(elements));
      line = fgetl(fid);
      elements = strsplit(line,{' ','='});
      ds(transistors:(transistors + numel(elements)-2)) = elements(2:numel(elements));
      transistors = transistors + numel(elements)-1;
      if(transistors>8)
          break;
      end
  end  
end

for i=1:numel(ds)
    Vds(i) = str2num(ds{i});
    Vgs(i) = str2num(gs{i});
end

fclose(fid);

end
