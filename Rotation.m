function rot = Rotation(euler, q)

if strcmp(euler, 'roll')
    rot = [  1      0        0  ;
             0    cos(q)  sin(q);
             0   -sin(q)  cos(q)] ;
elseif strcmp(euler, 'pitch')
    rot = [cos(q)   0   sin(q);
             0      1     0   ;
          -sin(q)   0   cos(q)];
elseif strcmp(euler, 'yaw')
    rot = [cos(q) -sin(q)  0   ;
           sin(q) cos(q)   0   ;
             0      0      1   ];
end

  
  