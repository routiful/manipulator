function q = IK_arm(Base, D, A, B, End)

r = End.R' * (Base.p + Base.R * [0 0 D]' - End.p);
C = norm(r);
c5 = (A^2 + B^2 - C^2) / (2.0 * A * B);

if c5 >= 1
    q4 = 0.0;
elseif c5 <= -1
    q4 = pi;
else
    q4 = -acos(c5) + pi; % Joint3
end

R = Base.R' * End.R * Rotation('pitch', q4)';
q3 = atan2(R(1,3), R(1,1));
q2 = atan2(R(2,1), R(1,1));

q = [q2 q3 q4]

