function y = tichphanSimpson_1phan3(fx,a,b,N)
sum_le = 0;
sum_chan = 0;
h = (b-a)./N;
for i=1:1:(N-1)
    if(rem(i,2) == 0)
        sum_chan = sum_chan + fx(a+i.*h);
    else
        sum_le = sum_le + fx(a+i.*h);
    end
end
y = (h./3).*(fx(a)+fx(b)+4.*sum_le+2.*sum_chan);
fprintf("Dap an phuong phap tich phan Simpson 1/3: %.10f\n",y);
end