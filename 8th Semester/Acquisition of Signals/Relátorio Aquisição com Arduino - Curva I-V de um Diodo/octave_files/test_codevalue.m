function [meas_adc] = test_codevalue(s1,value)
for i=1:5
         send_value(s1,value);                        
         [test_value(i),test_success] = receive_value(s1);
         if (test_success)
                  %fprintf(1,'Received value: \t %d \n',test_value);
         end       
         fflush(stdout);                                              
end      
meas_adc = mean(double(test_value(3:end)));
end