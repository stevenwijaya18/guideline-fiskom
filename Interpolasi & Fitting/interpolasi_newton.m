clc; close all; clear;

% Definisikan data
x = [1, 2, 3, 5, 6];
y = [4.75, 4, 5.25, 19.75, 36];
x_target = 4;

% Algoritma Interpolasi Newton

if length(x)~=length(y)
  disp('x ama y harus punya panjang yang sama')
else
  % Interpolasi Newton
  n = length(x);
  b = zeros(n, n); % Bikin matriks zeros -> yang bakal diisi sama f[x1,x2]; f[x2,x3] dst.
  b(:,1) = y(:);
  for j = 2:n
    for i = 1:n-j+1
    b(i,j) = (b(i+1,j-1)-b(i,j-1))/(x(i+j-1)-x(i));
    end
  end
% Finite divided difference
xt = 1;
yint = b(1,1);
  for j = 1:n-1
  xt = xt*(x_target-x(j));
  yint = yint+b(1,j+1)*xt;
  end
end

disp(['Hasil Interpolasi Newton = ', num2str(yint)]);

