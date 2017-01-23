clc
clear all
close all

global uLINK G Kf Df
G = 9.8;
Kf = 1.0E+4; Df = 1.0E+3;    % Floor stiffness[N/m], viscosity[N/(m/s)]
r = 0.2; a = 0.05; c = 0.2;  % Top radius, thickness, shaft length/2 [m]
MakeTop(1, r, a, c);

uLINK(1).p  = [0 0 0.3]';                % Initial position [m]
uLINK(1).R  = Rodrigues([1 0 0], pi/50); % Initial posture
uLINK(1).vo = [0 0 0]';                  % Initial speed [m/s]
uLINK(1).w  = [0 0 50]';                 % Initial spin [rad/s]

Dtime = 0.001;
EndTime = 2.0;
time = 0:Dtime:EndTime;

figure
frame_skip = 3;

AX = [-0.2 0.4]; AY = [-0.3 0.3]; AZ = [0.0 0.8]; % 3D view area

for n = 1:length(time)
    [f,tau] = TopForce(1);                             % External force
    [P,L]   = SE3dynamics(1,f,tau);                    % Acceleration
    [uLINK(1).p, uLINK(1).R] = SE3exp(1, Dtime);       % Update configuration
    uLINK(1).w  = uLINK(1).w  + Dtime * uLINK(1).dw;   % Update ang. velocity
    uLINK(1).vo = uLINK(1).vo + Dtime * uLINK(1).dvo;  % Update lin. velocity
    
    if mod(n, frame_skip) == 0
        ShowObject;                                    % Show the top
    end
end