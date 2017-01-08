function rot = Rpitch(q)
rot = [cos(q)   0   sin(q);
         0      1     0   ;
      -sin(q)   0   cos(q)];