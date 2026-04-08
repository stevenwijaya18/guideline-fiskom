clc; close all; clear;

% Definisikan input matriks koefisien A dan matriks Hasil b
% Notes: matriks A harus square matriks

A = [1, -1, 1;
     35, 6, 0;
     0, 5, -27];

b = [0; 150; 0];

% Hitung ukuran matriks A dan b
[ra,ca] = size(A);
[rb,cb] = size(b);

% Algoritma Naive Gaussian Elimination
if ra ~= ca
    disp('Matriks A harus square matriks');
else
    % Augmented Matriks
    if ra ~= rb
        disp('Ukuran baris hasil tidak match dengan ukuran baris persamaan');
    else
        Aug = [A b];
        [raug, caug] = size(Aug);

        % Forward Elimination
        for k = 1:ca-1
            for i = k+1:ra
                factor = Aug(i,k)/Aug(k,k);
                Aug(i,k:caug) = Aug(i,k:caug) - factor*Aug(k,k:caug);
            end
        end

        % Back substitution
        x = zeros(ca,1);
        x(ca) = Aug(ca,caug)/Aug(ca,ca);
        for i = ca-1:-1:1
            x(i) = (Aug(i,caug) - Aug(i,i+1:ca)*x(i+1:ca))/Aug(i,i);
        end
    end
end

% Menampilkan hasil
for i = 1:ca
    disp(['x', num2str(i), ' = ', num2str(x(i))]);
end
