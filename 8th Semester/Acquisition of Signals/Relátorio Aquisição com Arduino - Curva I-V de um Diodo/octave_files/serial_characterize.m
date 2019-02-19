function serial_characterize();
pkg load instrument-control
warning ("on", "Octave:int-math-overflow")
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

srl_flush(s1);

inserted_voltage = 0:0.1:5;
meas_adc = zeros(1,length(inserted_voltage));
inserted_code=  zeros(1,length(inserted_voltage));

for i=1:length(inserted_voltage)
         fprintf(1,'Testing for value #%d: %f Volts \n',i,inserted_voltage(i));
         inserted_code(i) = uint8(inserted_voltage(i)*(2**8)/5.0);
         meas_adc(i) = test_codevalue(s1,inserted_code(i));
         meas_voltage(i) = meas_adc(i)*5.0/(2**10);
end
resistance = 75;
current = (inserted_voltage - meas_voltage)/resistance;
fclose(s1)

subplot(1,2,1);
plot(meas_voltage,current,'*r');
subplot(1,2,2);
plot(inserted_voltage,meas_voltage,'*b');

end