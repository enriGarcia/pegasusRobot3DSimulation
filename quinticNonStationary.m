function [t,q,dq,dqq] = quinticNonStationary(t0,tf,qf,points)

t=linspace(t0,tf,points);
for i=1:numel(t)
    q(i)=qf*(10*((t(i)/tf)^3)-15*((t(i)/tf)^4)+6*((t(i)/tf)^5));
    dq(i)=qf*(30*((t(i)^2)/(tf^3))-60*((t(i)^3)/(tf^4))+30*((t(i)^4)/(tf^5)));
    dqq(i)=qf*(60*(t(i)/(tf^3))-180*((t(i)^2)/(tf^4))+120*((t(i)^3)/(tf^5)));
end
end 

