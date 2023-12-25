function y = tichphanSimpson_3phan8(fx,a,b,N)
    h = (b-a)./N;
    sum1 = 0;
    sum2 = 0;
    for i=1:1:(N-1)
        if (rem(i,3) == 0)
            sum1 = sum1 + fx(a+i*h);       
        else
            sum2 = sum2 + fx(a+i*h);
          
        end
    end
    y = ((3.*h)./8).*(2.*sum1 + 3.*sum2 + fx(a) + fx(b));
    fprintf("Dap an phuong phap tich phan Simpson 3/8: %.10f\n",y);
end