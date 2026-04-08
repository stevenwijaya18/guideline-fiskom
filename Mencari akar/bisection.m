clear; clc; close all;

% Definisikan parameter
toleransi = 10e-6;
n_iter = 50;
a = -3; % interval awal
b = 1; % interval akhir

% Fungsi yang mau dicari akarnya
f = @(x) x^2 - 3*x - 4;

if f(a)*f(b) > 0
   disp('akar masalah')
   else
   for k = 1:n_iter
       c = (a + b)/2;
       if f(c) == 0
          akar = c;
          break;
       end
       if f(a)*f(c) < 0
          b = c;
          else
          a = c;
       end

       if abs(a-b) < toleransi
          akar = c;
          break;
       end
   end
end

% Display hasil
disp(['Hasil akar menggunakan metode bisection: ', num2str(akar)]);
