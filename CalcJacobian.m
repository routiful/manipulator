function J = CalcJacobian(idx)
global uLINK

jsize  = length(idx);
target =  uLINK(idx(end)).p;  % absolute target position
J = zeros(6,jsize); 

for n = 1:jsize
    j = idx(n);
    mom = uLINK(j).mother;
    a = uLINK(mom).R * uLINK(j).a; % joint axis in world frame
    J(:,n) = [calcHatto(a) * (target - uLINK(j).p) ; 
                             a                     ];
end