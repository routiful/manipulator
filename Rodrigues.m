function rot = Rodrigues(a, q)
a_hatto = calcHatto(a);
rot = eye(3) + a_hatto*sind(q) + a_hatto*a_hatto*(1-cosd(q));