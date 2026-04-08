close all; clear; clc;

pkg load optim % Biar bisa ngebaca csvnya lancar

file_path = 'input_data.csv'; % pastiin file csv ada di satu folder sama file .m
data = csvread(file_path);

% Ekstrak data x sama y
x = data(:,1);
y = data(:,2);

% Plot x, y
plot(x,y); % memastikan data terbaca
