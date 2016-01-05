t=1;
x=-t:0.01:t;
close all
plot(x,x/(t+1))
hold on
A=(t+1)*phi((x+1)./(t+1))-(t+1)*phi((x-1)./(t+1));
plot(x,(exp(A)-1)./(exp(A)+1),'r')
B=2*x./(t+1);
plot(x,(exp(B)-1)./(exp(B)+1),'g')
plot(x,x/t,'k')