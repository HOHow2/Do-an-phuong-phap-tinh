function result = Lagrange(xa, ya, x)
syms x
n = length(xa);
sum = 0;
for i = 1: n % lặp hết các giá trị các mảng x
     product = ya(i);% tương ứng với từng giá trong mảng y
     for j = 1: n
         if i ~= j
              product = product*(x - xa(j))/(xa(i) - xa(j));% nội suy Lagrange cho từng giá trị Li(x[i])
         end
     end
     sum = sum + product;
end
result = sum;