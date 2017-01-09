function rot = Rodrigues(a, q)

a_hatto = calcHatto(a);
rot = eye(3) + a_hatto*sin(q) + a_hatto^2*(1-cos(q));
end