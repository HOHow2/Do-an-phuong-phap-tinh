function [a1, a0, dudoan,ketqua] = hoiQuyPhuongPhapMu(xa, ya, giatridudoan)
    syms x;
    n = length(xa);

    lnY = log(ya);

    x2 = xa .^ 2;
    xy = xa .* lnY;

    Sx = sum(xa);
    Sx2 = sum(x2);
    Sxy = sum(xy);
    Sy = sum(lnY);

    a1 = exp((Sx2 * Sy - Sx * Sxy) / (n * Sx2 - Sx^2));
    a0 = (n * Sxy - Sx * Sy) / (n * Sx2 - Sx^2);

    lnY_dudoan = log(giatridudoan);
    dudoan = exp(log(a1) + a0 * lnY_dudoan);
    %fprintf('\ngiá trị dự đoán là: %.4f\n', dudoan);
    
    ketqua= a1 + exp(a0*x);
end