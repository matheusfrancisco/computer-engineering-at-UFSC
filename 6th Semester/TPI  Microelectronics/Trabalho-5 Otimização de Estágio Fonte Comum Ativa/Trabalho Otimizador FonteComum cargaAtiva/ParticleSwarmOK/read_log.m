function [meas] = read_log ()

%Abre arquivo na pasta localizada no diretório superior chamada LTSPICE
fid = fopen('generated_netlist.log','rt', 'n', 'UTF16LE');

line  = fgetl(fid);
    while(~feof(fid))
        line = fgets(fid);
        elements = strsplit(line,{' ','='});
        if (strcmp(elements(1),'gain:'))
            elements = strsplit(char(elements(3)),{'(','dB'});
            meas = str2num(elements{2});
        break;
        end  
    end

fclose(fid);


end