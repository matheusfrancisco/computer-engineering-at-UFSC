%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FUNCTION THAT CALCULATES THE BER OF M-QAM IN AWGN
% n_bits: Input, number of bits
% M: Input, constellation size
% EbNodB: Input, energy per bit to noise power spectral density
% ber: Output, bit error rate
% Copyright RAYmaps (www.raymaps.com)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
n_bits=1000;
M=16;
EbNodB=1;
% Transmitter
k=log2(M);
EbNo=10^(EbNodB/10);
x=transpose(round(rand(1,n_bits)));
h1=modem.qammod(M);
h1.inputtype='bit';
h1.symbolorder='gray';
y=modulate(h1,x);

% Channel
Eb=mean((abs(y)).^2)/k;
sigma=sqrt(Eb/(2*EbNo));
w=sigma*(randn(1,n_bits/k)+1i*randn(1,n_bits/k));
r=y+w';

% Receiver
h2=modem.qamdemod(M);
h2.outputtype='bit';
h2.symbolorder='gray';
h2.decisiontype='hard decision';
z=demodulate(h2,r);
ber2=(n_bits-sum(x==z))/n_bits

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%