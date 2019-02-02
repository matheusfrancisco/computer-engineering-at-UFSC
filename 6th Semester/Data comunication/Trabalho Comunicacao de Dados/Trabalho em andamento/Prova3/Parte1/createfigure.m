function createfigure(X1, YMatrix1, XMatrix1, YMatrix2, EMatrix1, X2, YMatrix3, XMatrix2, YMatrix4, EMatrix2, X3, Y1, XMatrix3, YMatrix5, EMatrix3, X4, Y2, X5, Y3)
%CREATEFIGURE(X1, YMATRIX1, XMATRIX1, YMATRIX2, EMATRIX1, X2, YMATRIX3, XMATRIX2, YMATRIX4, EMATRIX2, X3, Y1, XMATRIX3, YMATRIX5, EMATRIX3, X4, Y2, X5, Y3)
%  X1:  vector of x data
%  YMATRIX1:  matrix of y data
%  XMATRIX1:  errorbar x matrix
%  YMATRIX2:  errorbar y matrix
%  EMATRIX1:  errorbar e matrix
%  X2:  vector of x data
%  YMATRIX3:  matrix of y data
%  XMATRIX2:  errorbar x matrix
%  YMATRIX4:  errorbar y matrix
%  EMATRIX2:  errorbar e matrix
%  X3:  vector of x data
%  Y1:  vector of y data
%  XMATRIX3:  errorbar x matrix
%  YMATRIX5:  errorbar y matrix
%  EMATRIX3:  errorbar e matrix
%  X4:  vector of x data
%  Y2:  vector of y data
%  X5:  vector of x data
%  Y3:  vector of y data

%  Auto-generated by MATLAB on 10-Jun-2017 10:23:57

% Create figure
figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1,'YScale','log','LineStyleOrderIndex',4);
%% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes1,[0 18]);
%% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes1,[1e-08 1]);
grid(axes1,'on');
hold(axes1,'on');

% Create multiple lines using matrix input to semilogy
semilogy1 = semilogy(X1,YMatrix1,'LineWidth',1,'Parent',axes1);
set(semilogy1(1),'DisplayName','BPSK teórica','Color',[0 0 1]);
set(semilogy1(2),'DisplayName','BPSK simulado','Marker','*',...
    'LineStyle','none',...
    'Color',[0.7 0.7 0]);
set(semilogy1(3),'DisplayName','QPSK teórica','Color',[0.7 0 0.7]);
set(semilogy1(4),'DisplayName','QPSK simulada','Marker','diamond',...
    'LineStyle','none',...
    'Color',[0.7 0 0.7]);
set(semilogy1(5),'DisplayName','8PSK teórica','Color',[1 0 0]);
set(semilogy1(6),'DisplayName','8PSK simulada','Marker','*',...
    'LineStyle','none',...
    'Color',[0 0 0]);
set(semilogy1(7),'DisplayName','16PSK teórica','Color',[0 0.9 0]);
set(semilogy1(8),'DisplayName','16PSK simulada','Marker','diamond',...
    'LineStyle','none',...
    'Color',[0.7 0.7 0]);
set(semilogy1(9),'DisplayName','32PSK teórica','Color',[0 0 1]);
set(semilogy1(10),'DisplayName','32PSK simulada','Marker','o',...
    'LineStyle','none',...
    'Color',[0 0.7 0.7]);
set(semilogy1(11),'DisplayName','64PSK teórica','Color',[0.7 0 0.7]);
set(semilogy1(12),'DisplayName','64PSF simulada','Marker','^','LineWidth',2,...
    'LineStyle','none',...
    'Color',[1 0 0]);

% Create multiple error bars using matrix input to errorbar
errorbar1 = errorbar(XMatrix1,YMatrix2,EMatrix1,'Visible','off',...
    'LineStyle','none');
set(errorbar1(1),'Marker','diamond','Color',[0.7 0 0.7]);
set(errorbar1(2),'Marker','diamond','Color',[0.7 0 0.7]);
set(errorbar1(3),'Marker','diamond','Color',[0.7 0 0.7]);
set(errorbar1(4),'Marker','*','Color',[0.7 0.7 0]);
set(errorbar1(5),'Marker','*','Color',[0.7 0.7 0]);
set(errorbar1(6),'Marker','*','Color',[0.7 0.7 0]);

% Create multiple lines using matrix input to semilogy
semilogy2 = semilogy(X2,YMatrix3);
set(semilogy2(1),'Color',[0.7 0.7 0]);
set(semilogy2(2),'Color',[0.7 0 0.7]);

% Create multiple error bars using matrix input to errorbar
errorbar(XMatrix2,YMatrix4,EMatrix2,'Visible','off','Marker','*',...
    'LineStyle','none',...
    'Color',[0 0 0]);

% Create semilogy
semilogy(X3,Y1,'Color',[0 0 0]);

% Create multiple error bars using matrix input to errorbar
errorbar2 = errorbar(XMatrix3,YMatrix5,EMatrix3,'Visible','off',...
    'LineStyle','none');
set(errorbar2(1),'Marker','^','Color',[1 0 0]);
set(errorbar2(2),'Marker','^','Color',[1 0 0]);
set(errorbar2(3),'Marker','^','Color',[1 0 0]);
set(errorbar2(4),'Marker','o','Color',[0 0.7 0.7]);
set(errorbar2(5),'Marker','o','Color',[0 0.7 0.7]);
set(errorbar2(6),'Marker','o','Color',[0 0.7 0.7]);
set(errorbar2(7),'Marker','diamond','Color',[0.7 0.7 0]);
set(errorbar2(8),'Marker','diamond','Color',[0.7 0.7 0]);
set(errorbar2(9),'Marker','diamond','Color',[0.7 0.7 0]);

% Create semilogy
semilogy(X4,Y2,'Color',[0.7 0.7 0]);

% Create semilogy
semilogy(X5,Y3,'Color',[0 0.7 0.7]);

% Create xlabel
xlabel('E_b/N_0 (dB)','FontSize',11);

% Create ylabel
ylabel('BER','FontSize',11);

% Create legend
legend1 = legend(axes1,'show');
set(legend1,...
    'Position',[0.134337477429285 0.137141225701376 0.278181812925772 0.494017080262174]);

