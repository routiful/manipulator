global uLINK
LinkData;

SetJointAngles(FindRoute(4), [degtorad(-40) degtorad(30) degtorad(8)]);
DrawManipulator;

End_position = uLINK(5).p'
End_orientation = uLINK(5).R