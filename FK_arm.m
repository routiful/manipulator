global uLINK
LinkData;

SetJointAngles(FindRoute(4), [degtorad(0) degtorad(0) degtorad(0)]);
DrawManipulator;

End_position = uLINK(5).p'
End_orientation = uLINK(5).R