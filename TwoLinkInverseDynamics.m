function t = TwoLinkInverseDynamics(m1, m2, l1, l2, lg1, lg2, I1, I2, q, q_dot, q_ddot, f_ext)

gravity = 9.81;

M=[m1*lg1^2 + m2*l1^2 + m2*lg2^2 + I1 + I2 + 2*m2*l1*lg2*cos(q(2)), m2*lg2^2 + I2 + m2*l1*lg2*cos(q(2));
   m2*lg2^2 + I2 + m2*l1*lg2*cos(q(2)),                             m2*lg2^2 + I2 ];
h = [-m2*l1*lg2*(2*q_dot(1)+q_dot(2))*q_dot(2)*sin(q(2));
      m2*l1*lg2*q_dot(1)*q_dot(1)*sin(q(2))];
g = [(m1*lg1 + m2*l1)*gravity*cos(q(1)) + m2*gravity*lg2*cos(q(1) + q(2));
     m2*gravity*lg2*cos(q(1) + q(2))];
 
J = [-l1*sin(q(1)) - l2*sin(q(1) + q(2)), -l2*sin(q(1) + q(2));
      l1*cos(q(1)) + l2*cos(q(1) + q(2)),  l2*cos(q(1) + q(2))];
 
t = M*q_ddot + h + g - J' * f_ext;

end