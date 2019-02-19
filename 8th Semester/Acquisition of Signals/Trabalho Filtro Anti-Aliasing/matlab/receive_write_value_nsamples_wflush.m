%% receive value
function [rx_value,rx_time,rx_success] = receive_write_value_nsamples_wflush(s1,nsamples,realtimeplot,max_realtime_plotsamples);

srl_flush(s1);

if (realtimeplot)
    realtimeplot_handler = figure;
end

idx = 0;
keypressed = 0;

while (idx < nsamples || nsamples == 0)

  keypressed = kbhit(1);
  if (keypressed == 'x')
      fprintf(1,'\nExiting program');
      close all;
      break;
  elseif (keypressed == 'v') 
      fprintf(1,'\n');
      dac_voltage = input('Type DAC voltage [0 to 5V]: ');
      dac_code = dac_voltage.*(2**8)./5;   %convert volts to value;
      send_value(s1,dac_code);
      send_value(s1,dac_code);
  end


  idx = idx + 1;
  rx_tries = 0;
  header_success = 0;
  while ((rx_tries < 100) && ~header_success)
           % will return header_sucess = 0 as soon as one byte does not correspond to the expected
           rx_int = srl_read(s1,1);
           if (rx_int == 255) 
	            rx_int = srl_read(s1,1);
                    if (rx_int == 0)
                        rx_int = srl_read(s1,1);
                        if (rx_int == 255)
                              header_success = 1;
			      %keyboard
                        end
                    end
           end           
           rx_tries = rx_tries + 1;
  end
  % will get here only if header_sucess = 1 or if rx_tries was higher than the limit 
	   if (header_success)
                    channel = srl_read(s1, 1);
                    byte1 = srl_read(s1, 1);
                    byte2 = srl_read(s1, 1);		   
                    rx_value(channel,idx) = double(uint16(byte1)*(2**8)+uint16(byte2));  
		    
		    rx_value(channel,idx) = rx_value(channel,idx).*5./(2**10);   %convert value to volts;

                    % receive time values in millis
		    rx_time(channel,idx) = 0;
		    for time_idx_byte=1:4
		        byte_time = srl_read(s1, 1); 
		        rx_time(channel,idx) = rx_time(channel,idx) + uint32(byte_time)*(2**(8*(4-time_idx_byte)));
                    end		    
		    rx_time(channel,idx) = rx_time(channel,idx)./1000; % convert value to millis
                    rx_success(channel,idx) = 1;               
		    
		    if (realtimeplot)
		        realtimeplot_handler = plot(rx_time(max(1,end-max_realtime_plotsamples):end),rx_value(max(1,end-max_realtime_plotsamples):end),'*-b');
   		        xlabel('Time [seconds]');
		        ylabel('Value [Volts]');
			ylim([0, 5]);
			grid minor;
			drawnow();
			%fflush(stdout);
			srl_flush(s1);
		    end
           end
  end
 

end
