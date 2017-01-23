function [f,t]  = TopForce(j)
global uLINK G Kf Df

w_c = uLINK(j).R * uLINK(j).c + uLINK(j).p;  % center of mass
f = [0 0 -uLINK(j).m * G]';                  % gravity
t = cross(w_c, f);                           % gravity moment around the origin

if uLINK(j).p(3) < 0.0                       % the top is contact
    v = uLINK(j).vo + cross(uLINK(j).w, uLINK(j).p); % contacting speed
    fc = [-Df*v(1)  -Df*v(2)  -Kf*uLINK(j).p(3)-Df*v(3)]';
    f = f + fc;
    t = t + cross(uLINK(j).p, fc);
end

end