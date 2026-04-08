clc; close all; clear;

% Definisikan matriks yang mau dicari nilai eigen dan eigen vector;
A = [2, -1, 0;
     -1, 2, -1;
     0, -1, 2];

% Cek ukuran matriks;
[m,n] = size(A);

% Mencari nilai eigen dan vektor eigen dengan fungsi eig
if m ~= n
   disp('Ukuran matriks harus nxn');
else
   [V,D]=eig(A);
end

% Display nilai eigen
[m,n]=size(V);
eigenvalues = diag(D);
for i = 1:n
    disp(['Nilai eigen value ke ', num2str(i), ' = ', num2str(eigenvalues(i))])
end

% Display eigen vektor
for i = 1:length(eigenvalues)
    disp(['Vektor eigen untuk nilai eigen: ', num2str(eigenvalues(i))])
    disp(V(:,i))
end

