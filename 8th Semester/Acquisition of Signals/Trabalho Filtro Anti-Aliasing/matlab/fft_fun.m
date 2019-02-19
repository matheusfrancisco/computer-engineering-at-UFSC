function [f,P1] = fft_fun(y,passo)
% Plot FFT % extracted from https://www.mathworks.com/help/matlab/ref/fft.html
Y = fft(y);
L = size(Y,2); %length of signal
T = passo; %sampling period
Fs = 1/passo;
t = (0:L-1)*T; %time vector

%plot(t,values);
P2 = abs(Y/L); %two-sided spectrum
P1 = P2(1:L/2+1);             %single-sided spectrum
P1(2:end-1) = 2*P1(2:end-1);

f = Fs*(0:(L/2))/L;
# subplot(1,2,2);
# plot(f,P1);
# xlabel("frequencia (Hertz)");
# set(gca, 'XScale', 'log')
# grid minor



endfunction
