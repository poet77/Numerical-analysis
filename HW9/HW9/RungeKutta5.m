function [t,y,n]=RungeKutta5(f,x0,y0,N)

h=1/2^N;
t(1)=x0;
b(1)=x0;
y(:,1)=y0;
c(:,1)=y0;
for i=1:4


t(i+1)=t(i)+h;
k1=h*f(t(i),y(:,i));
k2=h*f(t(i)+h/4,y(:,i)+k1/4);
k3=h*f(t(i)+h*(3/8),y(:,i)+k1*(3/32)+k2*(9/32));
k4=h*f(t(i)+h*(12/13),y(:,i)+k1*(1932/2197)-k2*(7200/2197)+k3*(7296/2197));
k5=h*f(t(i)+h,y(:,i)+(439/216)*k1-8*k2+(3680/513)*k3-(845/4104)*k4);
k6=h*f(t(i)+h/2,y(:,i)-(8/27)*k1+2*k2-(3544/2565)*k3+(1859/4104)*k4-(11/40)*k5);

y(:,i+1)=y(:,i)+k1*(16/135)+k3*(6656/12825)+k4*(28561/56430)-k5*(9/50)+k6*(2/55);

end