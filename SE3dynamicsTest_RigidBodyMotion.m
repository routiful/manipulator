clc
clear all
close all

global uLINK
lx = 0.1; ly = 0.4; lz = 0.9;       % Depth, Width, Height [m]
mass = 36.0;                        % Mass [kg]
MakeRigidBody(1, [lx ly lz], mass); % Create rigid body

uLINK.p = [0.0, 0.0, 0]';           % Initial position [m]
uLINK.R = eye(3);                   % Initial posture
uLINK.w = [1, 0, 1]';               % Initial angular velocity [rad/s]
uLINK.vo = [0.5 0.1 0]';            % Initial linear velocity [m/s]

Dtime = 0.001;                      % Integration time [s]
show_num = 70;
EndTime = 5.0;                     % End of simulation [s]
time = 0:Dtime:EndTime;

vo_list = zeros(length(time), 3);
P_list = zeros(length(time), 3);

figure(1) 
AX=[0 3.0]; AY=[-0.6 1.5]; AZ=[-0.7 0.7]; % 3D view area

f = [0 0 0]'; tau = [0 0 0]';

for n = 1:length(time)
    [P, L] = SE3dynamics(1, f, tau);
    [uLINK(1).p, uLINK(1).R] = SE3exp(1,Dtime);
    uLINK(1).w  = uLINK(1).w  + Dtime * uLINK(1).dw;
    uLINK(1).vo = uLINK(1).vo + Dtime * uLINK(1).dvo;
    if(mod(n, show_num) == 0)
        ShowObject; % Show object
        hold on
    end
    P_list(n,:) = P';
    vo_list(n,:) = uLINK(1).vo';
end

wx_list = vo_list(:,1);
wy_list = vo_list(:,2);
wz_list = vo_list(:,3);

Lx_list = P_list(:,1);
Ly_list = P_list(:,2);
Lz_list = P_list(:,3);

figure(2)
hold on
plot(time, wx_list, 'b-');
plot(time, wy_list, 'g-', 'LineWidth', 4);
plot(time, wz_list, 'r--');
legend('vo_x', 'vo_y', 'vo_z');
figure(3)
hold on
plot(time, Lx_list, 'b-');
plot(time, Ly_list, 'g-', 'LineWidth',4);
plot(time, Lz_list, 'r--');
legend('P_x', 'P_y', 'P_z');
