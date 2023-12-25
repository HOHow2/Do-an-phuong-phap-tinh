function [nghiem,solanlap] = chiadoi(f,a,b,saiso)
err = saiso;
solanlap = 0;
x=a;
y=b;
c = (a+b)/2;
while(1)
    if (f(c)*f(x) < 0)
        y = c; % b = c
    else
        x=c; % a = c
    end
    e = abs(y-x);
%%%
    if (e < err)
         nghiem = c;
         break
    else
         c = (x + y)/2;
         solanlap = solanlap + 1;
    end
end
% fprintf("\nnghiem la : ");
% disp(nghiem);
% fprintf("\nso lan lap la : ");
% disp(solanlap);
end