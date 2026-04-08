clear; clc; close all;

% Definisikan parameter
toleransi = 10e-6;
n_iter = 50;
x0 = 3; % nilai tebakan

% Fungsi yang mau dicari akarnya
f = @(x) x^2 - 3*x - 4; % fungsi target
df = @(x) 2*x - 3; % turunan fungsi target

if df(x0) == 0
   disp('Turunannya 0')
   else
       for k = 1:n_iter
           x = x0 - f(x0)/df(x0);
           if abs(f(x)) < toleransi
           akar = x;
               break
           else
           x0 = x;
           end
       end
end

% Display hasil
disp(['Hasil akar menggunakan metode newton_raphson: ', num2str(akar)]);
