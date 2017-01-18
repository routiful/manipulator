function [P,L] = SE3dynamics(j)
global uLINK

w_c = uLINK(j).R * uLINK(j).c + uLINK(j).p;  % center of mass
w_I = uLINK(j).R * uLINK(j).I * uLINK(j).R'; % inertia tensor
c_hat = calchatto(w_c);

% spatial inertia matrix
Iww = w_I + uLINK(j).m * c_hat * c_hat';
Ivv = uLINK(j).m * eye(3);
Iwv = uLINK(j).m * c_hat;
Is = [Ivv, Iwv'; Iwv, Iww];

P = uLINK(j).m * (uLINK(j).vo + cross(uLINK(j).w, w_c));      % linear momentum
L = uLINK(j).m * cross(w_c, uLINK(j).vo) + Iww * uLINK(j).w;  % angluar momentum
pp = [             cross(uLINK(j).w, P);
      cross(uLINK(j).vo, P) + cross(uLINK(j).w, L)];
  
a0 = Inv(Is)*(-pp);  % spatial acceleration

uLINK(j).dvo = a0(1:3);
uLINK(j).dw  = a0(4:6);
end
