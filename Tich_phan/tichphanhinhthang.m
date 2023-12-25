function y = tichphanhinhthang(fx,a,b,N)
h = (b-a)./N;
temp = 0;
for i=1:1:(N-1)
    temp = temp + fx(a+i*h);
end
y = (h./2).*(fx(a)+fx(b)+2.*temp);
fprintf("Dap an phuong phap tich phan hinh thang: %.10f\n",y);
end