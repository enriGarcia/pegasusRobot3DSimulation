clear all;
clc;

%Quintical Non-Stationay Trajectory
t0=0;tf=15;qf=35;points=1000;
[t,q,dq,dqq]=quinticNonStationary(t0,tf,qf,points);

myfig=figure;
myax1=axes;
plot(t,dqq,'k')
set(gca, 'Xtick', [0,tf], 'XTickLabel',{'t_{0}','t_{f}'});
set(gca, 'Ytick', [0,qf], 'YTickLabel',{'ddq_{0}','ddq_{f}'});
xtick1=get(myax1,'xtick');
pos1=get(myax1,'position');
pos2=[pos1(1) pos1(2)+pos1(4)/2 pos1(3) pos1(4)/2];
myax2=axes;
set(myax2,'position',pos2,...
          'xlim',get(myax1,'xlim'),...
          'xtick',get(myax1,'xtick'),...
          'ytick',get(myax1,'ytick'),...
          'xticklabel',get(myax1,'xticklabel'),...
          'yticklabel',get(myax1,'yticklabel'),...
          'color','none');
set(myax1,'xtick',[],'xticklabel','','xcolor',get(gcf,'color'),'box','off');
set(myax2,'ytick',[],'yticklabel','','box','off');


xlabel('Tiempo t');
ylabel('Aceleracion dq');

