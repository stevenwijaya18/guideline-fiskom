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
   % Algoritma QR Shifts (Sumber: https://github.com/Kjablonska/Numerical-Methods/blob/projectA/Task4_projectA/QR_shifts.m)
       tol = 10e-6;
       imax = 10000;
       iterations = 0;
       n = size(A,1);

       eigenvalues=diag(ones(n));
       init_subm = A;

       for k=n:-1:2
           DK = init_subm;
           it = 0;

           while it <= imax && max(abs(DK(k, 1:k-1))) > tol
               DD = DK(k-1:k, k-1:k);
               p = [1 -(DD(1,1) + DD(2,2)) DD(2,2)*DD(1,1)-DD(2,1)*DD(1,2)];
               e = roots(p);

               if abs(e(1) - DD(2,2)) < abs(e(2) - DD(2,2))
                   shift = e(1);
               else
                   shift = e(2);
               end
               DP = DK - eye(k) * shift ;
               [Q, R] = qr(DP);
               DK = R * Q + eye(k) * shift;
               it = it + 1;
           end
           if it > imax
               error ('imax exceeded, can not proceed.');
           end
           eigenvalues(k) = DK(k,k);

           if k > 2
               init_subm = DK(1:k-1, 1:k-1);
           else
               eigenvalues(1) = DK(1,1);
           end
           iterations = iterations + 1;

       end
end

% Display nilai eigen
for i = 1:length(eigenvalues)
    disp(['Nilai eigen value ke ', num2str(i), ' = ', num2str(eigenvalues(i))])
end

% Display eigen vektor
I = eye(n);
toleransi_null = 1e-4;

for i = 1:length(eigenvalues)
    v = null(A - eigenvalues(i)*I, toleransi_null);
    disp(['Vektor eigen untuk nilai eigen: ', num2str(eigenvalues(i))])
    disp(v)
end

