function [result,result_Y,result_X] = Lagrange_syms(xa, ya, X)
xx = xa;
syms x;
n = length(xa);
sum = 0;
 for i = 1:n 
    product = ya(i);
    for j = 1:n 
        if (i ~= j)
        L = @(x)(x - xa(j))./(xa(i) - xa(j));
        product = product.*L(x);
        end 
    end
    sum = sum + product;
 end
result = sum;
result = (vpa(result,5));
result_X = double(subs(result,x,X));
result_Y = double(subs(result,x,xx));
end