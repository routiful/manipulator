function calcFK(q1, q2, q3)
global uLINK

LinkData

uLINK(2).q = q1;
uLINK(3).q = q2;
uLINK(4).q = q3;

ForwardKinematics(1)
DrawManipulator
End_position = uLINK(5).p'