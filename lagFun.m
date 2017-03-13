function [out] = lagFun(X, Y, x)
long = length(X);
Deno = zeros(1, long);
Nume = zeros(1, long);
for i = 1:long
    X_e = zeros(1, long-1);
    X_e(1: i-1) = X(1: i-1);
    X_e(i: end) = X(i+1: end);  
    X_p = X(i) - X_e;
    Deno(i) = prod(X_p);
    nume_p = x - X_e;
    Nume(i) = prod(nume_p);
end
L = Nume ./ Deno;
out = sum(L.*Y);