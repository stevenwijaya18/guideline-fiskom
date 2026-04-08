clc; close all; clear;

pkg load optim

% Ngebaca csv
file_path = 'gaussian.csv';
data = csvread(file_path);

% Ekstrak data x sama y
x = data(:,1);
y = data(:,2);

% Mendefinisikan fungsi fitting
f = @(a, x) a(1)+a(2).*exp(-(x-a(3)).^2/(2*a(4).^2));
% a(1), a(2), a(3), a(4) -> konstanta yang mau dicari, kalo ada 3 konstanta berarti a(1) sampai a(3)

% Tebakan awal
tebakan_awal = [3, 12, 8, 7];

% Curve Fitting
a = lsqcurvefit(f, tebakan_awal, x, y);
disp('Nilai konstanta fitting: ');
disp(a);

% Definisikan rentang x
x_t = linspace(x(1), x(end), 500);

% Plot kurva dan fitting
figure;
plot(x, y, 'o');
hold on;
plot(x_t, f(a, x_t), 'k-')
hold off;
xlabel('x')
ylabel('y')
set(gca, 'FontSize', 12);
legend('Data', 'Fitted Gaussian', 'Location', 'southoutside', 'Orientation', 'horizontal')
title('Data dan Kurva Fitting')
