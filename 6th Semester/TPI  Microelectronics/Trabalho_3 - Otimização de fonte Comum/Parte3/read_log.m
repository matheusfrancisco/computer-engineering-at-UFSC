function[meas] = read_log()

  fid=fopen('generated_netlist.log','r');

  meas = 0;

  line = fgetl(fid);
  while(~feof(fid))
    line = fgetl(fid);
    elements = strsplit(line, {' ', '=', '(', 'd'});
    if (strcmp(elements{1},'gain:'))

      meas = str2num(elements{4});
    endif   
  endwhile

  fclose(fid);

endfunction