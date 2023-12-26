function [dudoan,ketqua,ketqua1] = hoiQuyPhuongPhapMu(xa, ya, giatridudoan)
    syms x;
    xx = xa;
    n = length(xa);
    lY= log(ya);
    X=xa;
    Xm=mean(X);
    lYm=mean(lY);
    XlY=X.*lY;
    X2=X.^2;
    A1 = (n * sum(XlY) - sum(X) * sum(lY)) / (n * sum(X2) - sum(X) ^ 2);
    A0 = lYm - A1 * Xm;
    a=exp(A0);
    b=A1;
    ketqua=a*exp(b*x);
    dudoan=a*exp(b*giatridudoan);
    ketqua1 = double(subs(ketqua,x,xx));
end