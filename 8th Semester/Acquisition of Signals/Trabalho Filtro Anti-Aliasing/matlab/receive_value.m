%% receive value
function [rx_value,rx_success] = receive_value(s1);
rx_success = 0;
rx_tries = 0;
  while ((rx_tries < 10) && ~rx_success)
           rx_tries = rx_tries + 1;
           rx_int = srl_read(s1, 1); %array of ints. Each int receives one byte                    
           if (rx_int == 255)
                    channel = srl_read(s1, 1);
                    byte1 = srl_read(s1, 1);
                    byte2 = srl_read(s1, 1); 
                    rx_value(channel) = uint16(byte1)*(2**8)+uint16(byte2);  
                    rx_success = 1;                    
           end
  end
end
