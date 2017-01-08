function rot = Rodrigues(a, q)
q = degtorad(q);
a_hatto = calcHatto(a);
rot = eye(3) + a_hatto*sin(q) + a_hatto*a_hatto*(1-cos(q));