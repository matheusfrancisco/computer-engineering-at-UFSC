function [meas fase freq0db] = read_log_AC ()

%Abre arquivo na pasta localizada no diret�rio superior chamada LTSPICE
fid = fopen('generated_netlist_AC.log', 'r');

line  = fgetl(fid);

    while(~feof(fid))
        line = fgets(fid);
        elements = strsplit(line,{' ','='});
        elements2 = strsplit(line,{' ','='});
        if (strcmp(elements(1),'gain1hz:'))
            %keyboard
            elements = strsplit(char(elements(3)),{'(','dB'});
         
            %keyboard
            meas = str2num(elements{2});
           
            %fase = str2num(elements2{2});
            %keyboard
       
        end 
        if (strcmp(elements2(1),'freq0db:')||strcmp(elements2(1),'Measurement'))
           %keyboard
            if(strcmp(elements(1),'Measurement'))
               fase=  180;
               freq0db = 0;
              %keyboard
               break;
            end
            freq0db = str2num(elements2{5});

            %elements2 = strsplit(char(elements2(3)),{'(','dB'});
           
           %keyboard
            
           %freq0db = str2num(elements2{2});
            elements2 = strsplit(char(elements2(3)),{',','�'});
            fase = str2num(elements2{2});
           
            
           
            %keyboard
        break;
        end 
    end

fclose(fid);


end