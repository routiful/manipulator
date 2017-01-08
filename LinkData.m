clc

global uLINK
%=========================================================================%
%=========================================================================%
uLINK(1).name   = 'Base';
uLINK(1).mother = 0;
uLINK(1).sister = 0;
uLINK(1).child  = 2;
uLINK(1).p = [0 0 0]'; % Position in World Coordinates
uLINK(1).R = eye(3);   % Attitude in World Coordinates
uLINK(1).q = 0;        % Joint angle
uLINK(1).a = [0 0 0]'; % Joint Axis Vector 
uLINK(1).b = [0 0 0]'; % Joint Relative Position (Relative to Parent)
%=========================================================================%
%=========================================================================%
uLINK(2).name   = 'Joint1';
uLINK(2).mother = 1;
uLINK(2).sister = 0;
uLINK(2).child  = 3;
uLINK(2).p = [0 0 0]'; % Position in World Coordinates
uLINK(2).R = eye(3);   % Attitude in World Coordinates
uLINK(2).q = 0;        % Joint angle
uLINK(2).a = [0 0 1]'; % Joint Axis Vector 
uLINK(2).b = [0 0 0]'; % Joint Relative Position (Relative to Parent)

uLINK(2).joint_vertex = [-0.5 -0.5 0; 0.5 -0.5 0; 0.5 0.5 0; -0.5 0.5 0; 
                         -0.5 -0.5 2; 0.5 -0.5 2; 0.5 0.5 2; -0.5 0.5 2];
uLINK(2).link_vertex  = [-0.2 -0.2 2; 0.2 -0.2 2; 0.2 0.2 2; -0.2 0.2 2; 
                         -0.2 -0.2 3; 0.2 -0.2 3; 0.2 0.2 3; -0.2 0.2 3];                      
uLINK(2).face = [1 2 3 4; 1 2 6 5; 2 3 7 6; 3 4 8 7; 1 4 8 5; 5 6 7 8];
%=========================================================================%
%=========================================================================%
uLINK(3).name   = 'Joint2';
uLINK(3).mother = 2;
uLINK(3).sister = 0;
uLINK(3).child  = 4;
uLINK(3).p = zeros(1,3)';  % Position in World Coordinates
uLINK(3).R = eye(3);       % Attitude in World Coordinates
uLINK(3).q = 0;            % Joint angle 
uLINK(3).a = [0 1 0]';     % Joint Axis Vector 
uLINK(3).b = [0 0 3]';     % Joint Relative Position (Relative to Parent)

uLINK(3).joint_vertex = [-0.5   -1 0; 0.5   -1 0; 0.5   1 0; -0.5   1 0; 
                         -0.5   -1 1; 0.5   -1 1; 0.5   1 1; -0.5   1 1];
uLINK(3).link_vertex  = [-0.2 -0.2 1; 0.2 -0.2 1; 0.2 0.2 1; -0.2 0.2 1; 
                         -0.2 -0.2 4; 0.2 -0.2 4; 0.2 0.2 4; -0.2 0.2 4];                 
uLINK(3).face = [1 2 3 4; 1 2 6 5; 2 3 7 6; 3 4 8 7; 1 4 8 5; 5 6 7 8];
%=========================================================================%
%=========================================================================%
uLINK(4).name   = 'Joint3';
uLINK(4).mother = 3;
uLINK(4).sister = 0;
uLINK(4).child  = 5;
uLINK(4).p = zeros(1,3)';  % Position in World Coordinates
uLINK(4).R = eye(3);       % Attitude in World Coordinates
uLINK(4).q = 0;            % Joint angle  
uLINK(4).a = [0 1 0]';     % Joint Axis Vector 
uLINK(4).b = [0 0 4]';     % Joint Relative Position (Relative to Parent)

uLINK(4).joint_vertex = [-0.5   -1 0; 0.5   -1 0; 0.5   1 0; -0.5   1 0; 
                         -0.5   -1 1; 0.5   -1 1; 0.5   1 1; -0.5   1 1];
uLINK(4).link_vertex  = [-0.2 -0.2 1; 0.2 -0.2 1; 0.2 0.2 1; -0.2 0.2 1; 
                         -0.2 -0.2 3; 0.2 -0.2 3; 0.2 0.2 3; -0.2 0.2 3];               
uLINK(4).face = [1 2 3 4; 1 2 6 5; 2 3 7 6; 3 4 8 7; 1 4 8 5; 5 6 7 8];
%=========================================================================%
%=========================================================================%
uLINK(5).name   = 'End';
uLINK(5).mother = 4;
uLINK(5).sister = 0;
uLINK(5).child  = 0;
uLINK(5).p = zeros(1,3)';  % Position in World Coordinates
uLINK(5).R = eye(3);       % Attitude in World Coordinates
uLINK(5).q = 0;            % Joint angle  
uLINK(5).a = [0 0 0]';     % Joint Axis Vector 
uLINK(5).b = [0 0 3]';     % Joint Relative Position (Relative to Parent)
