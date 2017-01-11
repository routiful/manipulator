function ForwardVelocity(j)
global uLINK
if j == 0
    return; 
end
if j ~= 1
    i = uLINK(j).mother;
    uLINK(j).v = uLINK(i).v + cross(uLINK(i).w, uLINK(i).R * uLINK(j).b);
    uLINK(j).w = uLINK(i).w + uLINK(i).R * (uLINK(j).a * uLINK(j).dq);
end
ForwardVelocity(uLINK(j).sister);
ForwardVelocity(uLINK(j).child);
end