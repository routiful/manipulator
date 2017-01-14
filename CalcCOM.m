function com = CalcCOM()

global uLINK
M = TotalMass(1);
MC = CalcMC(1);
com = MC / M;

end