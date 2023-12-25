function [result,result_Y,result_X]  = suyhamNewton(xa,ya,X)
xx = xa;
syms x;
%tinh divide different
n = length(xa);
da = ya;
for i = 1:n
     for j = 1:(i-1)
           da(i)=(da(j) - da(i))/(xa(j) - xa(i));
     end
end
%suy ra ham
n = length(da);
result = da(n);
for i = n-1:-1:1
    result = result * (x - xa(i)) + da(i);
end
result_X = double(subs(result,x,X));
result_Y = double(subs(result,x,xx));
result = (vpa(result,5));
end