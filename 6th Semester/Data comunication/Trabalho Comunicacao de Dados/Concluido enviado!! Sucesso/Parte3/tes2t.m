Rs  = 100; %Symbol rate 100 MHz
    Ts= 1/Rs;
    len = 1000;
    EbNo = [0:1:18];
    SymER = zeros(1,length(EbNo));
    M=[16];
%% Orthogonal FSK
for j=1:1
    msg = randint(1,len,M(j));                                  % Random signal
    freqsep=Rs; % Tone separation = 1/T for non-coherent orthogonal MFSK
    Fs = (M(j)-1)*freqsep;                                      % (M-1)*freq_sep <= Fs.
    nsamp = 2*Fs;
    txsig = fskmod(msg,M(j),freqsep,nsamp,Fs);                  % Modulate.
    k = log2(M(j));
    for i=1:length(EbNo)
        msg_rx  = awgn(txsig,EbNo(i)+10*log10(k));              % AWGN channel
        msg_rrx = fskdemod(msg_rx,M(j),freqsep,nsamp,Fs);       % Demodulate
        [num,BER(j,i)] = biterr(msg,msg_rrx);                   % Bit error rate
    end
    figure(2);semilogy(EbNo,BER(j,:),'bx-');
    hold on;
    suptitle('Bit Error Rate vs E_b/N_o for Orthogonal MFSK');
    xlabel('E_b/N_o (dB)'),ylabel('Bit Error Probability, P_E(M)');
    grid on
    BER_theory = berawgn(EbNo,'fsk',M(j),'noncoherent');        % Theoretical BER
     semilogy(EbNo,BER_theory,'ro:');
end