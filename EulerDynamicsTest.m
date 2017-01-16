clc
clear all
close all

global uLINK
lx = 0.1; ly = 0.4; lz = 0.9; % Depth, Width, Height [m]
mass = 36.0; % Mass [kg]
MakeRigidBody(1, [lx ly lz], mass); % Create rigid body

uLINK.p = [0.0, 0.0, 0]'; % Initial position [m]
uLINK.R = eye(3); % Initial posture
uLINK.w = [1, 1, 1]'; % Initial angular velocity [rad/s]
Dtime = 0.001; % Integration time [s]
show_num = 20;
EndTime = 10.0; % End of simulation [s]
time = 0:Dtime:EndTime;

w_list = zeros(length(time), 3);
L_list = zeros(length(time), 3);

figure(1)
AX=[-0.5 0.5]; AY=[-0.5 0.5]; AZ=[-0.5 1.0]; % 3D view area
for n = 1:length(time)
    L = EulerDynamics(1); % Euler¡¯s equation
    uLINK(1).R = Rodrigues(uLINK(1).w, Dtime) * uLINK(1).R; % Rodrigues
    uLINK(1).w = uLINK(1).w + Dtime * uLINK(1).dw; % Euler-method
    if(mod(n, show_num) == 0)
        ShowObject; % Show object
    end
    L_list(n,:) = L';
    w_list(n,:) = uLINK(1).w';
end

wx_list = w_list(:,1);
wy_list = w_list(:,2);
wz_list = w_list(:,3);

Lx_list = L_list(:,1);
Ly_list = L_list(:,2);
Lz_list = L_list(:,3);

figure(2)
hold on
plot(time, wx_list, 'b-');
plot(time, wy_list, 'g-', 'LineWidth', 4);
plot(time, wz_list, 'r--');
legend('w_x', 'w_y', 'w_z');
figure(3)
hold on
plot(time, Lx_list, 'b-');
plot(time, Ly_list, 'g-', 'LineWidth',4);
plot(time, Lz_list, 'r--');
legend('L_x', 'L_y', 'L_z');
