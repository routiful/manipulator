global uLINK
%=========================================================================%
%=========================================================================%
uLINK(1).name   = 'Base';
uLINK(1).mother = 0;
uLINK(1).sister = 0;
uLINK(1).child  = 2;
uLINK(1).m = 0;        % Link Mass
uLINK(1).p = [0 0 0]'; % Position in World Coordinates
uLINK(1).R = eye(3);   % Attitude in World Coordinates
uLINK(1).u  = 0;       % Angular Velocity in World Coordinates
uLINK(1).q = 0;        % Joint angle
uLINK(1).dq = 0;       % Joint velocity
uLINK(1).ddq = 0;      % Joint acceleration
uLINK(1).a = [0 0 0]'; % Joint Axis Vector 
uLINK(1).b = [0 0 0]'; % Joint Relative Position (Relative to Parent)
uLINK(1).c = [0 0 0]';   % Center of Mass in Local Coordinates
uLINK(1).mc = [0 0 0]';  % Center of Mass in World Coordinates
uLINK(1).v = [0 0 0]';   % Linear Velocity in World Coordinates
uLINK(1).vo = [0 0 0]';   % Linear Velocity in World Coordinates
uLINK(1).w = [0 0 0]';   % Angular Velocity in World Coordinates
uLINK(1).dvo = [0 0 0]';   % Linear Velocity in World Coordinates
uLINK(1).dw  = [0 0 0]';   % Angular Velocity in World Coordinates
uLINK(1).sv  = [0 0 0]';   % unit Spatial Velocity in World Coordinates
uLINK(1).sw  = [0 0 0]';   % Spatial Angular Velocity in World Coordinates
uLINK(1).I = [0 0 0;
              0 0 0;
              0 0 0];    % Inertia tensor in Reference Posture
uLINK(1).f_ext = [0 0 0 0 0 0]'; % ext force in World Coordinates
%=========================================================================%
%=========================================================================%
uLINK(2).name   = 'Joint1';
uLINK(2).mother = 1;
uLINK(2).sister = 0;
uLINK(2).child  = 3;
uLINK(2).m = 1;        % Link Mass
uLINK(2).p = [0 0 0]'; % Position in World Coordinates
uLINK(2).R = eye(3);   % Attitude in World Coordinates
uLINK(2).u  = 0;       % Angular Velocity in World Coordinates
uLINK(2).q = 0;        % Joint angle
uLINK(2).dq = 0;       % Joint velocity
uLINK(2).ddq = 0;      % Joint acceleration
uLINK(2).a = [0 -1 0]'; % Joint Axis Vector 
uLINK(2).b = [0 0 0]'; % Joint Relative Position (Relative to Parent)
uLINK(2).c = [0.5 0 0]';   % Center of Mass in Local Coordinates
uLINK(2).mc = [0.5 0 0 ]';  % Center of Mass in World Coordinates
uLINK(2).v = [0 0 0]';     % Linear Velocity in World Coordinates
uLINK(2).vo = [0 0 0]';   % Linear Velocity in World Coordinates
uLINK(2).w = [0 0 0]';     % Angular Velocity in World Coordinates
uLINK(2).dvo = [0 0 0]';   % Linear Velocity in World Coordinates
uLINK(2).dw  = [0 0 0]';   % Angular Velocity in World Coordinates
uLINK(2).sv  = [0 0 0]';   % Angular Velocity in World Coordinates
uLINK(2).sw  = [0 0 0]';   % Angular Velocity in World Coordinates
uLINK(2).I = [1 0 0;
              0 1 0;
              0 0 1];      % Inertia tensor in Reference Posture
uLINK(2).f_ext = [0 0 0 0 0 0]'; % ext force in World Coordinates
%=========================================================================%
%=========================================================================%
uLINK(3).name   = 'Joint2';
uLINK(3).mother = 2;
uLINK(3).sister = 0;
uLINK(3).child  = 4;
uLINK(3).m = 1;            % Link Mass
uLINK(3).p = zeros(1,3)';  % Position in World Coordinates
uLINK(3).R = eye(3);       % Attitude in World Coordinates
uLINK(3).u  = 0;           % Angular Velocity in World Coordinates
uLINK(3).q = 0;            % Joint angle 
uLINK(3).dq = 0;           % Joint velocity
uLINK(3).ddq = 0;          % Joint acceleration
uLINK(3).a = [0 -1 0]';    % Joint Axis Vector 
uLINK(3).b = [1 0 0]';     % Joint Relative Position (Relative to Parent)
uLINK(3).c = [0.5 0 0]';   % Center of Mass in Local Coordinates
uLINK(3).mc = [1.5 0 0]';    % Center of Mass in World Coordinates
uLINK(3).v = [0 0 0]';     % Linear Velocity in World Coordinates
uLINK(3).vo = [0 0 0]';   % Linear Velocity in World Coordinates
uLINK(3).w = [0 0 0]';     % Angular Velocity in World Coordinates
uLINK(3).dvo = [0 0 0]';   % Linear Velocity in World Coordinates
uLINK(3).dw  = [0 0 0]';   % Angular Velocity in World Coordinates
uLINK(3).sv  = [0 0 0]';   % Angular Velocity in World Coordinates
uLINK(3).sw  = [0 0 0]';   % Angular Velocity in World Coordinates
uLINK(3).I = [1 0 0;
              0 1 0;
              0 0 1];      % Inertia tensor in Reference Posture
uLINK(3).f_ext = [0 0 0 0 0 0]'; % ext force in World Coordinates
%=========================================================================%
%=========================================================================%
uLINK(4).name   = 'End';
uLINK(4).mother = 3;
uLINK(4).sister = 0;
uLINK(4).child  = 0;
uLINK(4).m = 0;            % Link Mass
uLINK(4).p = zeros(1,3)';  % Position in World Coordinates
uLINK(4).R = eye(3);       % Attitude in World Coordinates
uLINK(4).u  = 0;           % Angular Velocity in World Coordinates
uLINK(4).q = 0;            % Joint angle
uLINK(4).dq = 0;           % Joint velocity
uLINK(4).ddq = 0;          % Joint acceleration
uLINK(4).a = [0 0 0]';     % Joint Axis Vector 
uLINK(4).b = [1 0 0]';     % Joint Relative Position (Relative to Parent)
uLINK(4).c = [0 0 0]';     % Center of Mass in Local Coordinates
uLINK(4).mc = [0 0 0]';    % Center of Mass in World Coordinates
uLINK(4).v = [0 0 0]';     % Linear Velocity in World Coordinates
uLINK(4).vo = [0 0 0]';   % Linear Velocity in World Coordinates
uLINK(4).w = [0 0 0]';     % Angular Velocity in World Coordinates
uLINK(4).dvo = [0 0 0]';   % Linear Velocity in World Coordinates
uLINK(4).dw  = [0 0 0]';   % Angular Velocity in World Coordinates
uLINK(4).sv  = [0 0 0]';   % Angular Velocity in World Coordinates
uLINK(4).sw  = [0 0 0]';   % Angular Velocity in World Coordinates
uLINK(4).I = [0 0 0;
              0 0 0;
              0 0 0];      % Inertia tensor in Reference Posture
uLINK(4).f_ext = [0 0 0 0 0 0]'; % ext force in World Coordinates
%=========================================================================%

