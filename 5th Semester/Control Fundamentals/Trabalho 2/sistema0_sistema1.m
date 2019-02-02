
sistema1=tf([1],[1 0])
[MAGsistema1,FASEsistema1,w]=bode(sistema1,W)
MAGsistema1dB=20*log10(MAGsistema1)
MAGsistema1dB=squeeze(MAGsistema1dB)
FASEsistema1=squeeze(FASEsistema1)
MAGdiferenca1=MAGdb-MAGsistema1dB
FASEdiferenca1=PHASE-FASEsistema1
% grafico
figure
subplot(2,1,1)
semilogx(W,(MAGdiferenca1))
ylabel('Magnitude [dB]') 
grid
subplot(2,1,2)
semilogx(W,(FASEdiferenca1))
xlabel('Freqüência [rad/s]')
ylabel('Fase [graus]')
grid