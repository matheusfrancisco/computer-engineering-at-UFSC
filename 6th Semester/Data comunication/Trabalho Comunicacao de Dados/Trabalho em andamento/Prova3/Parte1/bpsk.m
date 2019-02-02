
%This program simulates BER of BPSK in AWGN channel%
 clear all; close all; clc;

 load('ber0.mat');
 load('ebno0.mat');
 num_bit=10;                          
 max_run=10;                              
 Eb=1;                                   
 SNRdB=0:1:18;                             
 SNR=10.^(SNRdB/10);                      

 hand=waitbar(0,'Please Wait....');
 for count=1:length(SNR)                  
     avgError=0;
     No=Eb/SNR(count);                    
     
     for run_time=1:max_run               
         waitbar((((count-1)*max_run)+run_time-1)/(length(SNRdB)*max_run));
         Error=0;
         
         data=randint(1,num_bit);        
         s=2*data-1;                     
         
         N=sqrt(No/2)*randn(1,num_bit);   %Generate AWGN
         
         Y=s+N;                           %Received Signal
         
         for k=1:num_bit                 
             if ((Y(k)>0 && data(k)==0)||(Y(k)<0 && data(k)==1))
                 Error=Error+1;
             end
         end
        
         Error=Error/num_bit;             
         avgError=avgError+Error;           
     end                                
     BER_sim(count)=avgError/max_run;                                      
 end                                       
 BER_th=(1/2)*erfc(sqrt(SNR));           
 close(hand);
 
 %semilogy(ebno0,ber0,'k');
 hold on
 %semilogy(SNRdB,BER_th,'k');              %Plot BER
 hold on
 %semilogy(SNRdB,BER_sim,'k*');
 legend('Theoretical','Simulation',3);
 axis([min(SNRdB) max(SNRdB) 10^(-5) 1]);
 hold off
