clear all;
clc;

a0=0;a1=0.1;a2=0.2;a3=0.3;a4=0.4;a5=100;
x=[0:10];

for t=1:numel(x)
    q(t)=a0+a1*x(t)+a2*((x(t))^2)+a3*((x(t))^3)+a4*((x(t))^4)+a5*((x(t))^5);
end

plot(x,q)
%axis([0,100,0,150])
