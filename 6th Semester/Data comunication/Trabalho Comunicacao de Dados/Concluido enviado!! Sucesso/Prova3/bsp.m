load('ber0.mat');
load('ebno0.mat');


SNR=0:1:18;  

for n=1:length(SNR)  
    
  data= randi([0 1],1,100);
  modS = pskmod(data,2);
  %scatterplot(bpskModulator,10)
  y= awgn(modS,SNR(n));
  demoS = pskdemod(y,2);
  [ne(n),ratio(n)]= biterr(data,demoS);
  %err = comm.ErrorRate;
  %ber = err(data,demoS);  
end 

%semilogy(ebno0,ber0,'k');