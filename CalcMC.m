function mc = CalcMC(j)
global uLINK

if j == 0
    mc = [0 0 0]';
else
    mc = uLINK(j).m * (uLINK(j).p + uLINK(j).R * uLINK(j).c );
    uLINK(j).mc = mc;
    mc = mc + CalcMC(uLINK(j).sister) + CalcMC(uLINK(j).child);
end

end