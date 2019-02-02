function [o_ganho] = read_log(op)

    if (op == 'ac')
        o_ganho = NaN;
        fid = fopen('netlist_gerada.log', 'r', 'n', 'windows-1252');
        
        
    % line = fgetl(fid); % pega uma linha do arquivo
        i = 1;
        while (fid == -1 && i < 20)
            run_netlist();
            fid = fopen('netlist_gerada.log', 'r', 'n', 'windows-1252');
            pause(5*60);
        end    
    
        while (~feof(fid))
            line = fgetl(fid);
        % disp(line);
            %keyboard % ponto de debug, permite usar o terminal
            elements = strsplit(line, {' ', '=', ':', ',', '(', ')', 'dB', '°'});
        % disp(elements);
            % keyboard          
            
            % Resgate do valor do ganho
            if (strcmp(elements(1), 'ganho'))
            ganho_db = str2double(elements(2));  
            o_ganho = 10.^(ganho_db / 20);
            end
        end

        fclose(fid);

    elseif (op == 'op')
    
        fid = fopen('netlist_gerada.log', 'r', 'n', 'windows-1252');
        
        
        % line = fgetl(fid); % pega uma linha do arquivo
        i = 1;
        while (fid == -1 && i < 20)
            run_netlist();
            fid = fopen('netlist_gerada.log', 'r', 'n', 'windows-1252');
            pause(5*60);
        end
        o_ganho = [1e9 1e9 1e9 1e9];
    
        while (~feof(fid))
            line = fgetl(fid);
            % disp(line);
            %keyboard % ponto de debug, permite usar o terminal
            elements = strsplit(line, {'\t', ' ', '=', ':', ',', '(', ')', 'dB', '°'});
            % disp(elements);
            % keyboard          
            
            % Resgate do valor do ganho]
            
            if (size(elements, 2) > 1 && strcmp(elements{1,2}, 'vgn'))
                o_ganho(1) = str2double(elements(3));  
            elseif (size(elements, 2) > 1 && strcmp(elements{1,2}, 'vout'))
                o_ganho(2) = str2double(elements(3)); 
            elseif (size(elements, 2) > 1 && strcmp(elements{1,2}, 'vdd'))
                o_ganho(3) = str2double(elements(3));   
            elseif (size(elements, 2) > 1 && strcmp(elements{1,2}, 'vgp'))
                o_ganho(4) = str2double(elements(3));  
                break;
            end
        end
        
        fclose(fid);
    end
end