clc; close all; clear;

% Definisikan input matriks koefisien A dan matriks Hasil b
% Notes: matriks A harus square matriks
A = [1, -1, -1;
     35, 5, 0;
     0, 5, -27];

b = [0; 150; 0];

% Hitung ukuran matriks A
[ra,ca] = size(A);

% Dekomposisi LU matriks A
if ra ~= ca
   disp('Matriks A harus square matriks');
else
   [L, U] = lu(A); % Dekomposisi

   % Cara 1: Invers Matriks (X = inv(U)*inv(L)*b)
   x1 = inverse(U)*inverse(L)*b;
   disp('Hasil Inverse Matriks')
   disp(x1);

   % Cara 2: Back Substitution
   % UX = inv(L)*b -> di MATLAB fungsi inversenya inv() tapi di Octave inverse()
   newB = inverse(L)*b;

   Aug = [U newB];
   [r, c] = size(Aug);

   % Back substitution
   x2 = zeros(r,1);
   x2(r) = Aug(r,c)/Aug(r,c-1);
   for i = (c-1)-1:-1:1
       x2(i) = (Aug(i,c)-Aug(i,i+1:c-1)*x2(i+1:c-1))/Aug(i,i);
   end
   disp('Hasil Back-Substitution');
   disp(x2);
end

