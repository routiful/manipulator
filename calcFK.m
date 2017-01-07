function calcFK(joint1, joint2, joint3)
global uLINK;

uLINK(2).q = joint1;
uLINK(3).q = joint2;
uLINK(4).q = joint3;

ForwardKinematics(1);
DrawManipulator
End_position = uLINK(5).p'