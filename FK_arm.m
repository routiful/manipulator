global uLINK
LinkData;

SetJointAngles(FindRoute(4), [0 degtorad(20) degtorad(20)]);
DrawManipulator;

End_position = uLINK(5).p'
End_orientation = uLINK(5).R