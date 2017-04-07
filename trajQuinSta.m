clear all;
clc;

%Quintical Non-Stationay Trajectory
t0=0;tf=15;qf=35;points=1000;
[t,q,dq,dqq]=quinticNonStationary(t0,tf,qf,points);
plot(t,dqq,'b')
xlabel('Tiempo t');
ylabel('Aceleracion dq');
set(gca, 'Xtick', [0,tf], 'XTickLabel',{'t_{0}','t_{f}'});
set(gca, 'Ytick', [0,qf], 'YTickLabel',{'ddq_{0}','ddq_{f}'});
set(gca, 'Box', 'off');




%Position
% for t=1:numel(time)
%     if (time(t)>=0)&&(time(t)<=(tf/n))
%         q(t)=(qf*(1-((30*(n-2))/(32+30*(n-2)))))*(((n^3)*(10/(2^3))*((time(t)/tf)^3))-((n^4)*(15/(2^4))*((time(t)/tf)^4))+((n^5)*(6/(2^5))*((time(t)/tf)^5)));
%     elseif (time(t)>=(tf/n))&&(time(t)<=((n-1)/n)*tf)
%         q(t)=5;
%     elseif (time(t)>=((n-1)/n)*tf)&&(time(t)<=tf)
%         q(t)=0;
%     end
% end 


%plot(time,q)
%axis([0,tf,0,qf])




