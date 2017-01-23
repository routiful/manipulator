function [vert, face] = MakeZcylinder(pos, radius, len)
a = 10;                         % regular polygon for circle
theta = (0:a-1)/a * 2 * pi;

x = radius * cos(theta);
y = radius * sin(theta);
z1 = len/1 * ones(1,a);
z2 = -z1;

vert = [x x 0 0;
        y y 0 0;
        z1 z2 len/2 -len/2];    % vertices
    
for n = 1:3
    vert(n,:) = vert(n,:) + pos(n);
end

face_side = [1:a; a+1:2*a; a+2:2*a a+1; 2:a 1];

face_up = [1:a; 2:a 1];
face_up(3:4, :) = 2*a+1;            % index of up center

face_down = [a+2:2*a a+1; a+1:2*a];
face_down(3:4, :) = 2*a+2;          % index of down center

face = [face_side face_up face_down];

end