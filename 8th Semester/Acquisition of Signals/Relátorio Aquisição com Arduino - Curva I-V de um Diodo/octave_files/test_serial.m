pkg load instrument-control

%known bug: Arduino is not accepting input unless the send_value is added in the loop with receive_value.


% Based on https://www.edn.com/design/analog/4440674/Read-serial-data-directly-into-Octave

if (exist("serial") != 3)
    disp("No Serial Support");
endif 

s1 = serial("/dev/ttyACM0");   % Open the port
set(s1, 'baudrate', 9600);     
set(s1, 'bytesize', 8);        % 5, 6, 7 or 8
set(s1, 'parity', 'n');        % 'n' or 'y'
set(s1, 'stopbits', 1);        % 1 or 2
set(s1, 'timeout', 20);       % 10.0 seconds
%pause(0.1);                    % Optional wait for device to wake up 
%srl_flush(s1); %flush input and output buffers
srl_flush(s1)

value = 255;
send_value(s1,value);      


for i=1:10;                        
         [test_value,test_success] = receive_value(s1);
         if (test_success)
                  fprintf(1,'Received value: \t %d \n',test_value);
         end
         send_value(s1,value);      
         fflush(stdout);         
end      
srl_flush(s1)
fclose(s1);


