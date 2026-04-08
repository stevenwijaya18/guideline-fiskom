clc; close all; clear;

% Definisikan data
x = [1, 2, 3, 5, 6];
y = [4.75, 4, 5.25, 19.75, 36];
x_target = 4;

% Algoritma Interpolasi Lagrange

if length(x)~=length(y)
  disp('x ama y harus punya panjang yang sama')
else
  % Interpolasi lagrange
  n = length(x);
  s = 0;
  for i = 1:n
  product = y(i);
    for j = 1:n
      if i ~= j
      product = product*(x_target-x(j))/(x(i)-x(j));
      end
    end
  s = s + product;
  end
yint = s;
end

disp(['Hasil interpolasi Lagrange = ', num2str(yint)]);

