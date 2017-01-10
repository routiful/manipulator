function w = rot2omega(R)

l = [R(3,2)-R(2,3) R(1,3)-R(3,1) R(2,1)-R(1,2)]';
theta = atan2(norm(l), R(1,1)+R(2,2)+R(3,3)-1);
diagonal = diag(R);
flag = 0;

if diagonal(1) == 1
    if diagonal(2) == 1 && diagonal(3) == 1
        flag = 1;
    elseif diagonal(2) == -1 && diagonal(3) == -1
        flag = 1;
    end
elseif diagonal(1) == -1
    if diagonal(2) == 1 && diagonal(3) == -1
        flag = 1;
    elseif diagonal(2) == -1 && diagonal(3) == 1
        flag = 1;
    end
end    

if R == eye(3)
    w = [0 0 0]';
elseif flag == 1
    w = pi/2 * [R(1,1)+1 R(2,2)+1 R(3,3)+1]';
else
    w = theta * (l / norm(l));
end
