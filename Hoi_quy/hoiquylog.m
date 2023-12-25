function [dudoan,ketqua,ketqua1] = hoiquylog(xa, ya, giatridudoan)
xx = xa;    
syms x;
    n = length(xa);

    lnX = log(xa);

    y2 = ya .^ 2;
    xy = lnX .* ya;

    SlnX = sum(lnX);
    SlnX2 = sum(lnX .^ 2);
    Sxy = sum(xy);
    Sy = sum(ya);

    a0 = (n * Sxy - SlnX * Sy) / (n * SlnX2 - SlnX^2);
    a1 = (Sy - a0 * SlnX) / n;

    lnX_dudoan = log(giatridudoan);
    dudoan = a1 + a0 * lnX_dudoan;
     ketqua= a1 + a0*log(x);
     ketqua = (vpa(ketqua,5));
     ketqua1 = double(subs(ketqua,x,xx));
    disp(ketqua);
    disp(ketqua1);
    disp(dudoan);
end