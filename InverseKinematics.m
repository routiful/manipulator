function InverseKinematics(to, Target)
global uLINK

lambda = 0.5; % To stabilize the numeric calculation. (0 1]
ForwardKinematics(1);
idx = FindRoute(to);

for n = 1:10
    J   = CalcJacobian(idx);
    err = CalcVWerr(Target, uLINK(to)); % Calculate velocity and angular velocity
    uLINK(to).p
    uLINK(to).R
    norm(err)
    if norm(err) < 1E-6 
        return;
    end
    
    dq = lambda * (J \ err);            % Solve linear equations
    for nn = 1:length(idx)
        j = idx(nn);
        uLINK(j).q = uLINK(j).q + dq(nn);
    end
    ForwardKinematics(1);
end

