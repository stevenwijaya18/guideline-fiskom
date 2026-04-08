clear; clc; close all;

% Definisikan parameter
toleransi = 10e-6;
n_iter = 50;
a = 3; % interval awal
b = 5; % interval akhir

% Fungsi yang mau dicari akarnya
f = @(x) x^2 - 3*x - 4;

for k = 1:n_iter
    f1 = f(a);
    f2 = f(b);
    if f2 - f1 ~= 0 % Exception Handling Pembagi 0
       x_baru = b-f2*(b-a)/(f2-f1);
       else
       disp('Pembagi nol')
    end

    if abs(x_baru-b) < toleransi
       akar = x_baru;
       break;
    else
    a = b;
    b = x_baru;
    akar = x_baru;
    end
end

% Display hasil
disp(['Hasil akar menggunakan metode secant: ', num2str(akar)]);
