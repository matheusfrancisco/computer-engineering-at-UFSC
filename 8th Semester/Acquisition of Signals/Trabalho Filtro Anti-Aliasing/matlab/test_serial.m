clear all;
s1 = serial_initialize(); 

realtime = 1;
nsamples = 0;
max_realtime_plotsamples = 2000;

%realtime = 0;
%nsamples = 100; 
%max_realtime_plotsamples = 0;

[rx_values, rx_time, rx_success] = receive_value_nsamples_wflush(s1,nsamples,realtime,max_realtime_plotsamples);

if (~realtime)
  plot(rx_time,rx_values,'*-b');
  grid minor;
  xlabel('Time [seconds]');
  ylabel('Value [Volts]');
  ylim([0, 5]);
end
