function rot = rpy2rot(roll, pitch, yaw)
roll  = degtorad(roll);
pitch = degtorad(pitch);
yaw   = degtorad(yaw);

rot = [ cos(yaw)*cos(pitch)  -sin(yaw)*cos(roll)+cos(yaw)*sin(pitch)*sin(roll) sin(yaw)*sin(roll)+cos(yaw)*sin(pitch)*cos(roll);
        sin(yaw)*cos(pitch)  cos(yaw)*cos(roll)+sin(yaw)*sin(pitch)*sin(roll) -cos(yaw)*sin(roll)+sin(yaw)*sin(pitch)*cos(roll);
        -sin(pitch)                              cos(pitch)*sin(roll)                  cos(pitch)*cos(roll)                     ];
end
