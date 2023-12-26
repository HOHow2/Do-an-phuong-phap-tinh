function [dudoan,ketqua,ketqua1] = hoiquytuyentinh(xa, ya, giatridudoan)
xx = xa;    
syms x;
    n = length(xa);
    xm = mean(xa);
    ym = mean(ya);
    xy = xa .* ya;
    x2 = xa .^ 2;

    a1 = (n * sum(xy) - sum(xa) * sum(ya)) / (n * sum(x2) - sum(xa) ^ 2);
    a0 = ym - a1 * xm;

    dudoan = a1 * giatridudoan + a0;


    ketqua= a0 + a1*x;
    ketqua1 = double(subs(ketqua,x,xx));
end