function theta= invPegKin(Ad,L)
nx=Ad(1,1); ox=Ad(1,2); ax=Ad(1,3); px=Ad(1,4);
ny=Ad(2,1); oy=Ad(2,2); ay=Ad(2,3); py=Ad(2,4);
nz=Ad(3,1); oz=Ad(3,2); az=Ad(3,3); pz=Ad(3,4);
L1=L(1);L2=L(2);L3=L(3);L4=L(4);

%theta1
theta11=atan2(py,px);
theta12=theta11+pi;
theta1=[theta11 theta12];

%theta5
s51=ny*cos(theta11)-nx*sin(theta11);
c51=oy*cos(theta11)-ox*sin(theta11);
s52=ny*cos(theta12)-nx*sin(theta12);
c52=oy*cos(theta12)-ox*sin(theta12);
theta51=atan2(real(s51),real(c51));
theta52=atan2(real(s52),real(c52));
theta5=[theta51 theta52];

%theta234
s2341=(cos(theta11)*nx+sin(theta11)*ny)/cos(theta51);
s2342=(cos(theta12)*nx+sin(theta12)*ny)/cos(theta52);
c2341=sqrt(1-(s2341)^2);
c2342=-sqrt(1-(s2341)^2);
c2343=sqrt(1-(s2342)^2);
c2344=-sqrt(1-(s2342)^2);
theta2341=atan2(real(s2341),real(c2341));
theta2342=atan2(real(s2341),real(c2342));
theta2343=atan2(real(s2342),real(c2343));
theta2344=atan2(real(s2342),real(c2344));

%theta3
k11=cos(theta11)*px+sin(theta11)*py-L4*cos(theta2341);
k12=cos(theta11)*px+sin(theta11)*py-L4*cos(theta2342);
k13=cos(theta12)*px+sin(theta12)*py-L4*cos(theta2343);
k14=cos(theta12)*px+sin(theta12)*py-L4*cos(theta2344);
k21=pz-L1-L4*sin(theta2341);
k22=pz-L1-L4*sin(theta2342);
k23=pz-L1-L4*sin(theta2343);
k24=pz-L1-L4*sin(theta2344);
c31=(k11^2+k21^2-L2^2-L3^2)/(2*L2*L3);
c32=(k12^2+k22^2-L2^2-L3^2)/(2*L2*L3);
c33=(k13^2+k23^2-L2^2-L3^2)/(2*L2*L3);
c34=(k14^2+k24^2-L2^2-L3^2)/(2*L2*L3);
s31=sqrt(1-(c31^2));
s32=-sqrt(1-(c31^2));
s33=sqrt(1-(c32^2));
s34=-sqrt(1-(c32^2));
s35=sqrt(1-(c33^2));
s36=-sqrt(1-(c33^2));
s37=sqrt(1-(c34^2));
s38=-sqrt(1-(c34^2));
theta31=atan2(real(s31),real(c31));
theta32=atan2(real(s32),real(c31));
theta33=atan2(real(s33),real(c32));
theta34=atan2(real(s34),real(c32));
theta35=atan2(real(s35),real(c33));
theta36=atan2(real(s36),real(c33));
theta37=atan2(real(s37),real(c34));
theta38=atan2(real(s38),real(c34));
theta3=[theta31 theta32 theta33 theta34 theta35 theta36 theta37 theta38];

%theta2
k31=L3*cos(theta31)+L2;
k32=L3*cos(theta32)+L2;
k33=L3*cos(theta33)+L2;
k34=L3*cos(theta34)+L2;
k35=L3*cos(theta35)+L2;
k36=L3*cos(theta36)+L2;
k37=L3*cos(theta37)+L2;
k38=L3*cos(theta38)+L2;
k41=L3*sin(theta31);
k42=L3*sin(theta32);
k43=L3*sin(theta33);
k44=L3*sin(theta34);
k45=L3*sin(theta35);
k46=L3*sin(theta36);
k47=L3*sin(theta37);
k48=L3*sin(theta38);
s21=(k21*k31-k11*k41)/(k31^2+k41^2);
s22=(k21*k32-k11*k42)/(k32^2+k42^2);
s23=(k22*k33-k12*k43)/(k33^2+k43^2);
s24=(k22*k34-k12*k44)/(k34^2+k44^2);
s25=(k23*k35-k13*k45)/(k35^2+k45^2);
s26=(k23*k36-k13*k46)/(k36^2+k46^2);
s27=(k24*k37-k14*k47)/(k37^2+k47^2);
s28=(k24*k38-k14*k48)/(k38^2+k48^2);
c21=sqrt(1-(s21^2));
c22=-sqrt(1-(s21^2));
c23=sqrt(1-(s22^2));
c24=-sqrt(1-(s22^2));
c25=sqrt(1-(s23^2));
c26=-sqrt(1-(s23^2));
c27=sqrt(1-(s24^2));
c28=-sqrt(1-(s24^2));
c29=sqrt(1-(s25^2));
c2a=-sqrt(1-(s25^2));
c2b=sqrt(1-(s26^2));
c2c=-sqrt(1-(s26^2));
c2d=sqrt(1-(s27^2));
c2e=-sqrt(1-(s27^2));
c2f=sqrt(1-(s28^2));
c2g=-sqrt(1-(s28^2));
theta21=atan2(real(s21),real(c21));
theta22=atan2(real(s21),real(c22));
theta23=atan2(real(s22),real(c23));
theta24=atan2(real(s22),real(c24));
theta25=atan2(real(s23),real(c25));
theta26=atan2(real(s23),real(c26));
theta27=atan2(real(s24),real(c27));
theta28=atan2(real(s24),real(c28));
theta29=atan2(real(s25),real(c29));
theta2a=atan2(real(s25),real(c2a));
theta2b=atan2(real(s26),real(c2b));
theta2c=atan2(real(s26),real(c2c));
theta2d=atan2(real(s27),real(c2d));
theta2e=atan2(real(s27),real(c2e));
theta2f=atan2(real(s28),real(c2f));
theta2g=atan2(real(s28),real(c2g));
theta2=[theta21 theta22 theta23 theta24 theta25 theta26 theta27 theta28 theta29 theta2a theta2b theta2c theta2d theta2e theta2f theta2g];

%theta4
theta41=theta2341-theta21-theta31;
theta42=theta2341-theta22-theta31;
theta43=theta2341-theta23-theta32;
theta44=theta2341-theta24-theta32;
theta45=theta2342-theta25-theta33;
theta46=theta2342-theta26-theta33;
theta47=theta2342-theta27-theta34;
theta48=theta2342-theta28-theta34;
theta49=theta2343-theta29-theta35;
theta4a=theta2343-theta2a-theta35;
theta4b=theta2343-theta2b-theta36;
theta4c=theta2343-theta2c-theta36;
theta4d=theta2344-theta2d-theta37;
theta4e=theta2344-theta2e-theta37;
theta4f=theta2344-theta2f-theta38;
theta4g=theta2344-theta2g-theta38;
theta41n=-theta41;
theta42n=-theta42;
theta43n=-theta43;
theta44n=-theta44;
theta45n=-theta45;
theta46n=-theta46;
theta47n=-theta47;
theta48n=-theta48;
theta49n=-theta49;
theta4an=-theta4a;
theta4bn=-theta4b;
theta4cn=-theta4c;
theta4dn=-theta4d;
theta4en=-theta4e;
theta4fn=-theta4f;
theta4gn=-theta4g;
theta4=[theta41 theta42 theta43 theta44 theta45 theta46 theta47 theta48 theta49 theta4a theta4b theta4c theta4d theta4e theta4f theta4g theta41n theta42n theta43n theta44n theta45n theta46n theta47n theta48n theta49n theta4an theta4bn theta4cn theta4dn theta4en theta4fn theta4gn];

theta=[theta1 theta2 theta3 theta4 theta5];
end