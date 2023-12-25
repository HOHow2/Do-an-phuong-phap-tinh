function [nghiem,solanlap] = tieptuyen(fp,a,b,saiso)
syms x;
x0=a;
y=b;
err=saiso;
solanlap=0;
solanlap_1=0;
solanlap_2=0;
dh1= str2func(['@(x)' char(diff(fp(x)))]); %f'(x)
dh2= str2func(['@(x)' char(diff(dh1(x)))]); %f''(x)
while (1)
        f = fp(x0); %f(x0)
        value_dh2 = dh2(x0); % f''(x0)
        if (f * value_dh2 > 0) % f(x0) * f''(x0) > 0
            break
        else
             x0 = (x0+y)/2; % x0 = (x0+b)/2
             solanlap_1 = solanlap_1 + 1;
        end
end
while(1)
        xi_1 = x0; % x(i-1)
        f1 = fp(xi_1); % fx(i-1)
        value_dh1 = dh1(xi_1); % f'(xi-1)
        x0 = xi_1-(f1/value_dh1); % xi = x(i-1) - f(xi-1) / f'(xi-1)
        if abs(x0-xi_1) < err % |xi - (xi-1)| < saiso
            nghiem = double(x0); % nghiem
            break
        else
            solanlap_2 = solanlap_2 + 1;
        end
end
% fprintf("\nso lan lap lan 2 la : ");
% disp(solanlap_2);
% fprintf("\nnghiem la : ");
% disp(nghiem);
% fprintf("\ntong so lan lap la : ");
solanlap=solanlap_1 + solanlap_2;
disp(solanlap);
end