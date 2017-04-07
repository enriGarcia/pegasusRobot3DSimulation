clear all;
close all;
clc;

L=[0.318 0.2286 0.2286 0.1328];
Q=[deg2rad(45) deg2rad(53.6) deg2rad(22) deg2rad(154) deg2rad(65)];

[A1,A2,A3,A4,A5,Aeq] = directPegKin(Q,L);
Ad=Aeq;

theta=rad2deg(invPegKin(Ad,L));
theta1=theta(1:2);
theta2=theta(3:18);
theta3=theta(19:26);
theta4=theta(27:58);
theta5=theta(59:end);

for i=1:2
    for j=1:2
        for k=1:8
            for l=1:16
                for m=1:32
                    sol(:,:,m)=directPegKin([theta1(i) theta2(l) theta3(k) theta4(m) theta5(j)],L);
                end
            end
        end
    end
end


%drawRobot(A1,A2,A3,A4,A5,Aeq)

