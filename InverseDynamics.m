function [f,t] = InverseDynamics(j)
global uLINK
if j == 0
    f=[0,0,0]';
    t=[0,0,0]';
    return;
end

c = uLINK(j).R * uLINK(j).c + uLINK(j).p; % Center of mass
I = uLINK(j).R * uLINK(j).I * uLINK(j).R'; % Inertia tensor
c_hat = calcHatto(c);
I = I + uLINK(j).m * c_hat * c_hat';
P = uLINK(j).m * (uLINK(j).vo + cross(uLINK(j).w,c)); % Momentum
L = uLINK(j).m * cross(c,uLINK(j).vo) + I * uLINK(j).w; % Ang.momentum
f0 = uLINK(j).m * (uLINK(j).dvo + cross(uLINK(j).dw,c)) ...
    + cross(uLINK(j).w,P);
t0 = uLINK(j).m * cross(c,uLINK(j).dvo) + I * uLINK(j).dw ...
    + cross(uLINK(j).vo,P) + cross(uLINK(j).w,L);
[f1,t1] = InverseDynamics(uLINK(j).child); % Force and moment form child
f_ext = [uLINK(j).R, zeros(3);calcHatto(uLINK(j).p)*uLINK(j).R, uLINK(j).R]*uLINK(j).f_ext;
% f_ext = [eye(3), zeros(3);calcHatto(uLINK(j).p), eye(3)]*uLINK(j).f_ext;
f = f0 + f1 - f_ext(1:3, 1);
t = t0 + t1 - f_ext(4:6, 1);

if j ~= 1
    uLINK(j).u = uLINK(j).sv' * f + uLINK(j).sw' * t; % Joint torque
end

[f2,t2] = InverseDynamics(uLINK(j).sister); % Force and moment from sister
f = f + f2;
t = t + t2;
end