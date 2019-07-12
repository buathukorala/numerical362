clc; close all; clear;
format long 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%% Fixed parameters %%%%%%%%%

iter = 0;       % do not modify this line
iter_max = 100; % do not modify this line
rel_error = 10; % do not modify this line
tolerance = 10^-8; 

alpha = ;  % last digit of your NAU user name

a = 2+ alpha;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

xold = a/2; % initial guess 

f = @(x) (x^3-a);  %  f(x)
fprime =  ; % derivative of f(x); (you need to complete this line)

x_appro =[];
rel_error_col = [];

 
while (rel_error > tolerance)  && (iter < iter_max)
    xnew =                ; % (you need to complete this line)
    rel_error = abs(xnew-xold); 
    rel_error_col = [rel_error_col;rel_error];
    x_appro = [x_appro; xnew];
    xold = xnew;
    iter = iter +1;
end

tot_iter = (1:iter);
x_appro;

fprintf('Simulation Summary \n');
fprintf('iteration  x-values  Relative error\n ');
fprintf('%3.0f \t %6.8f  \t %6.8f\n', [tot_iter ;x_appro'; rel_error_col'])