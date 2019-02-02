sistema2=tf([1.6*10^-5*0.66],[1 0.00173 1.6*10^-5])
%sistema2=tf([1.6*10^-5],[1 0.0016 1.6*10^-5])
[MAGsistema2,FASEsistema2,w]=bode(sistema2,W)
MAGsistema2dB=20*log10(MAGsistema2)
MAGsistema2dB=squeeze(MAGsistema2dB)
FASEsistema2=squeeze(FASEsistema2)
MAGdiferenca2=MAGdiferenca1-MAGsistema2dB
FASEdiferenca2=FASEdiferenca1-FASEsistema2
% grafico
figure
subplot(2,1,1)
semilogx(W,(MAGdiferenca1-MAGsistema2dB))
ylabel('Magnitude [dB]') 
grid
subplot(2,1,2)
semilogx(W,(FASEdiferenca1-FASEsistema2))
xlabel('Freqüência [rad/s]')
ylabel('Fase [graus]')
grid