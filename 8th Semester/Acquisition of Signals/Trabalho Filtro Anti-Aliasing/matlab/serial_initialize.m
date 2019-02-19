function [s1] = serial_initialize();
%% Initializes serial connection
pkg load instrument-control
warning ("on", "Octave:int-math-overflow")
% Based on https://www.edn.com/design/analog/4440674/Read-serial-data-directly-into-Octave

if (exist("serial") != 3)
    disp("No Serial Support");
endif 

for portnumber=0:4
    try
       portstring = ["/dev/ttyACM" num2str(portnumber)];
       s1 = serial(portstring);   % try to open the port
       disp(["Successfully connected to " portstring]);
       break
    catch 
       disp(["Couldn't connect to " portstring]);
    end_try_catch
end   


set(s1, 'baudrate', 9600);     
set(s1, 'bytesize', 8);        % 5, 6, 7 or 8
set(s1, 'parity', 'n');        % 'n' or 'y'
set(s1, 'stopbits', 1);        % 1 or 2
set(s1, 'timeout', 20);       % 10.0 seconds

srl_flush(s1);

end
