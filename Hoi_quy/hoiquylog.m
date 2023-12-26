function [dudoan,ketqua,ketqua1] = hoiquylog(xa, ya, giatridudoan)
xx = xa;    
syms x;
    n = length(xa);

   lgX=log10(xa);
   lgY=log10(ya);
    lgXm = mean(lgX);
    lgYm = mean(lgY);
    lgXlgY = lgX .* lgY;
    lgX2 = lgX .^ 2;

    A1 = (n * sum(lgXlgY) - sum(lgX) * sum(lgY)) / (n * sum(lgX2) - sum(lgX) ^ 2);
    A0 = lgYm - A1 * lgXm;
    a=10^(A0);
    b=A1;
    ketqua=a*x^(b);
    ketqua1 = double(subs(ketqua,x,xx));
    dudoan=a*giatridudoan^(b);
end