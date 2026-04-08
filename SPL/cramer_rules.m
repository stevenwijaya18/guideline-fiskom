clc; close all; clear;

% Definisikan input matriks koefisien A dan matriks Hasil b
% Notes: matriks A harus square matriks

A = [1, -1, 1;
     35, 6, 0;
     0, 5, -27];

b = [0; 150; 0];

# Hitung size A dan b
[ra, ca] = size(A);

# Algoritma Cramer Rules
x = zeros(ra,1);

if det(A) == 0
   disp('Tidak dapat menggunakan cramer rules')
else
   for i = 1:ca;
       Ai = A;
       Ai(:,i) = b;
       x(i) = det(Ai)/det(A);
   end
end

for i = 1:ca
    disp(['x', num2str(i), ' = ', num2str(x(i))]);
end

