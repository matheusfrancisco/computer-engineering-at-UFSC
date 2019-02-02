sistema3=sistema1.*sistema2
[MAGsistema3,FASEsistema3,w]=bode(sistema3,W)
MAGsistema3dB=20*log10(MAGsistema3)
MAGsistema3dB=squeeze(MAGsistema3dB)
FASEsistema3=squeeze(FASEsistema3)
MAGdiferenca3=((MAGsistema3dB)-MAGdb)
FASEdiferenca3=FASEsistema3-PHASE
% grafico
figure
subplot(2,1,1)
semilogx(W,(MAGdiferenca3))%,W,MAGdb,W,MAGsistema3dB)
ylabel('Magnitude [dB]') 
grid
subplot(2,1,2)
semilogx(W,(FASEdiferenca3))%,W,FASEsistema3,W,PHASE)
xlabel('Freqüência [rad/s]')
ylabel('Fase [graus]')
grid