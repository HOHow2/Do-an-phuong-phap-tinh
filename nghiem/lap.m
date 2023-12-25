function [nghiem,solanlap] = lap(fp,a,b,saiso)
x0=a;
x1 = b;
solanlap = 0;
err = saiso;
while(1)
    x0 = fp(x1);
    if (abs(x0-x1) < err)
        nghiem = x0;
        if (( nghiem < a) || (nghiem > b))
            x0 = b;
            x1 = a;
            continue
        end
        break
    else
        solanlap = solanlap+1;
        x1 = x0;
    end
end
% fprintf("\nNghiem phuong trinh la : ");
disp(nghiem);
% fprintf("\nSo lan lap la : ");
disp(solanlap);
end