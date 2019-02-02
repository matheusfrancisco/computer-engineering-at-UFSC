% UFSC - Campus Ararangua
% Fundamentos de Controle
% Trabalho identificação sistema pelo diagrama de bode
% Plotagem dos resultados

close all

% converte para dB
MAGdb = 20*log10(MAG);

% Remove dimensoes unitarias
MAGdb=squeeze(MAGdb);
PHASE=squeeze(PHASE);

% grafico
subplot(2,1,1)
semilogx(W,MAGdb)
ylabel('Magnitude [dB]') 
grid
subplot(2,1,2)
semilogx(W,PHASE)
xlabel('Freqüência [rad/s]')
ylabel('Fase [graus]')
grid
