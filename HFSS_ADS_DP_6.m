clc;
clear all;
close all;
%----------------------------------------------------------------------
% Units 
%----------------------------------------------------------------------

G = 10^9;
Meg = 10^6;
k = 10^+3;
c = 10^-2;
m = 10^-3;
u = 10^-6;
n = 10^-9;

%----------------------------------------------------------------------
% 
%----------------------------------------------------------------------
IFigure = 0;
%------------------------------------------------------------------
file  = 'M_Strip_V_3.s2p';
file2 = 'M_Strip_V_1.s2p';
g = read(rfdata.data,file);
h = read(rfdata.data,file2);

%% Define the path to the HFSS exported CSV file
csvFilePath = 'C:\Users\SIVA SRINIVAS\Desktop\EE-414-515-DP6\S Parameter Plot 1.csv';

% Read the CSV file into a table
data = readtable(csvFilePath);

% Extract the frequency and S11 data from the table
Frequency1 = data.Frequency;  % Assuming the column name in the CSV is 'Frequency'
S11 = data.S11_g;              % Assuming the column name in the CSV is 'S11'
S21 = data.S21_g;
NF = 32;
% Calculate the gain (magnitude of S11)
gainS11 = (S11);
gains21 = (S21);

IFigure = IFigure + 1;
figure_max(IFigure)
plot(g, 's21','db');
hold on
plot(h, 's21','db');
plot(Frequency1, gains21,'b', 'linewidth',4)
hold off
grid on
grid minor 
xlabel('{\itf} (GHz) ')
ylabel('| {\itS}_{21} | ( dB ) ', ...
'VerticalAlignment', 'bottom')
set(gca, 'FontName', 'times new roman', 'FontSize', NF)
%title('MATLAB Ideal Lumped Elements')
legend('ADS MStrip V3','ADS MStrip V1','HFSS V3')
axis([f_min/G, f_max/G, -40, 0])
set(gca, 'xtick', f_min/G : 0.2 : f_max/G);
set(gca, 'linewidth', 2.0)