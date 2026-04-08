clear; clc; close all;

% Definisikan parameter
toleransi = 10e-6;
n_iter = 50;
a = 3; % interval awal
b = 5; % interval akhir

% Fungsi yang mau dicari akarnya
f = @(x) x^2 - 3*x - 4;


if f(a)*f(b) > 0
   disp('akar masalah')
   else
       for k = 1:n_iter
           c = a - (f(a)*(b-a)/(f(b)-f(a))) ;
           if abs(f(c)) < toleransi
              akar = c;
              break
           endif
           if f(a)*f(c) < 0
           b = c;
           else
           a = c;
           end
      end
end

% Display hasil
disp(['Hasil akar menggunakan metode False-Position: ', num2str(akar)]);
