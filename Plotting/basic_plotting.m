clc; close all; clear; % Buat clear command window, close grafik, clear memory dsb.

% --- Basic Plotting ---

% Definisikan variabel
x1 = linspace(0,10,11);
x2 = [0 1 2 3 4 5 6 7 8 9 10];
disp('Hasil x1');
disp(x1);
disp('Hasil x2');
disp(x2);


x = linspace(0, 2*pi, 100); % Mengubah interval jadi array dengan space/jarak yang sama
% Format: linspace(i1, i2, nstep)
% i1:i2 -> interval
% nstep -> resolusi data / jumlah data dalam array

y = 5*sin(x); % fungsi sinus
z = 3*cos(x); % fungsi cosinus

% --- Plotting ---

% Grafik 1: Grafik sinus sin(x) vs x
figure; % Buat bikin grafik/figure baru

plot(x,y, 'Color', 'black', 'LineStyle', '-.'); % Buat ngeplot
% Format(x1,y1,LineSpec1,x2,y2,LineSpec2, ... dst)

title('Grafik sin(x) vs x'); % Judul grafik/figure
ylabel('sin(x)'); % Label sumbu y
xlabel('x'); % Label sumbu x
legend('sin(x)'); % Labeling garis
grid on; % Nambahin grid
set(gca,'FontSize', 16); % Set style kesuluruhan grafik

% --- Grafik 2: Grafik cos(x) vs x ---
figure; % Buat bikin grafik/figure baru

plot(x,z, 'Color', 'r', 'Marker','x', 'LineStyle', ':'); % Buat ngeplot
% Format(x1,y1,LineSpec1,x2,y2,LineSpec2, ... dst)

title('Grafik cos(x) vs x'); % Judul grafik/figure
ylabel('cos(x)'); % Label sumbu y
xlabel('x'); % Label sumbu x
legend('cos(x)'); % Labeling garis
grid on;
set(gca, 'FontSize', 16); % Set style kesuluruhan grafik

% Grafik 3: Grafik gabungan sin(x) dan cos(x) vs x
figure; % Buat bikin grafik/figure baru

plot(x,y, 'Color', 'r', 'Marker','x', 'LineStyle', ':'); % Buat ngeplot
% Format(x1,y1,LineSpec1,x2,y2,LineSpec2, ... dst)
hold on % Buat ngehold sementara
plot(x,z, 'Color', 'b', 'Marker','o', 'LineStyle', '--')

title('Grafik cos(x) vs x'); % Judul grafik/figure
ylabel('cos(x)'); % Label sumbu y
xlabel('x'); % Label sumbu x
legend('sin(x)','cos(x)'); % Labeling garis
grid on;
set(gca, 'FontSize', 16); % Set style kesuluruhan grafik

% Cara lain plot grafik barengan cos dan sin vs x
figure;

plot(x,y,'Color','r',x,z,'Color','b');
% Format(x1,y1,LineSpec1,x2,y2,LineSpec2, ... dst)

title('Grafik sin(x) dan cos(x) vs x'); % Judul grafik/figure
ylabel('sin(x) dan cos(x)'); % Label sumbu y
xlabel('x'); % Label sumbu x
legend('sin(x)','cos(x)'); % Labeling garis
grid on;
set(gca, 'FontSize', 16); % Set style kesuluruhan grafik

% Grafik 5: Plot 3 Dimensi
figure;
plot3(x,y,z);
title('Plot 3 Dimensi x, y, z');
xlabel('x');
ylabel('sin(x)');
zlabel('cos(x)');
legend('Plot 3D xyz');
grid on;
set(gca, 'FontSize', 16);



