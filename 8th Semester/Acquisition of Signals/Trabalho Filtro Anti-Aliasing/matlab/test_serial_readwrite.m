clear all;
s1 = serial_initialize(); 

realtime = 1;
nsamples = 0;
max_realtime_plotsamples = 200;

%realtime = 0;
%nsamples = 10000; 
%max_realtime_plotsamples = 0;

[rx_values, rx_time, rx_success] = receive_write_value_nsamples_wflush(s1,nsamples,realtime,max_realtime_plotsamples);

if (~realtime)
  plot(rx_time,rx_values,'*-b');
  grid minor;
  xlabel('Time [seconds]');
  ylabel('Value [Volts]');
  ylim([0, 5]);
end
