clc
close all
clear all


LinkData;

global uLINK

SetJointAngles(FindRoute(4), [degtorad(-20) degtorad(30) degtorad(8)]);
DrawManipulator;


mass_radius_ratio = 0.2;
total_mass = TotalMass(1)
total_com = CalcCOM()

%% draw com
hold on
[X,Y,Z] = sphere;
r=mass_radius_ratio*total_mass;
surf(X*r + total_com(1), Y*r + total_com(2), Z*r+total_com(3))

%route = FindRoute(4);
%[Xj,Yj,Zj] = sphere;
%for i = 1:length(route)
%    hold on
%    j = route(i);
%    rj=mass_radius_ratio*uLINK(j).m;
%    surf(Xj*rj + uLINK(j).mc(1), Yj*rj + uLINK(j).mc(2), Zj*rj+uLINK(j).mc(3))
%end
