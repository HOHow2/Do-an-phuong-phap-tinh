% fx = @(x) x.^3.*sin(x)+x.*cos(x); 
fx = @(x) x.^3.*sin(x);
a = 0;
b = 1;
N = 54;

fprintf("Voi N = %d\n",N); 
result_Tralezoidal = tichphanhinhthang(fx,a,b,N);
result_Simpson = tichphanSimpson_1phan3(fx,a,b,N);
tichphanSimpson_3phan8(fx,a,b,N);
%Tich phan chinh xac
result = integral(fx,a,b);
fprintf("Dap an chinh xac: %.10f\n",result);

saiso1 = abs(result_Tralezoidal - result)*100/result;
saiso2 = abs(result_Simpson - result)*100/result;

fprintf("sai so phuong phap hinh thang so voi dap an chinh xac: %f%%\n",saiso1);
fprintf("sai so phuong phap Simpson so voi dap an chinh xac: %f%%\n",saiso2);