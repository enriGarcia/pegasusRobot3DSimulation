function drawRobot(A1,A2,A3,A4,A5,Aeq)
A10=A1;
A20=A1*A2;
A30=A1*A2*A3;
A40=A1*A2*A3*A4;

figure('Name','Simulation');
scatter3(0,0,0,'filled');
hold all;
scatter3(A10(1,4),A10(2,4),A10(3,4),'filled');
plot3([0 A10(1,4)], [0 A10(2,4)], [0 A10(3,4)],'r');
scatter3(A20(1,4),A20(2,4),A20(3,4),'filled');
plot3([A10(1,4) A20(1,4)], [A10(2,4) A20(2,4)], [A10(3,4) A20(3,4)],'r');
scatter3(A30(1,4),A30(2,4),A30(3,4),'filled');
plot3([A20(1,4) A30(1,4)], [A20(2,4) A30(2,4)], [A20(3,4) A30(3,4)],'r');
scatter3(A40(1,4),A40(2,4),A40(3,4),'filled');
plot3([A30(1,4) A40(1,4)], [A30(2,4) A40(2,4)], [A30(3,4) A40(3,4)],'r');
scatter3(Aeq(1,4),Aeq(2,4),Aeq(3,4),'*');
plot3([A40(1,4) Aeq(1,4)], [A40(2,4) Aeq(2,4)], [A40(3,4) Aeq(3,4)],'r');

axis([-1 1 -1 1 0 1]);
view(0,0) 
end