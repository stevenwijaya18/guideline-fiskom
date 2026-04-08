clc; close all; clear;

pkg load optim % Biar bisa ngebaca csvnya lancar

% Ngebaca csv
file_path = 'input_data.csv';
data = csvread(file_path);

%Ekstrak data x sama y
x = data(:,1);
y = data(:,2);

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

