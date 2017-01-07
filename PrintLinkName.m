function PrintLinkName(j)
global uLINK % Refer global variable uLINK

if j ~= 0
    fprintf('j=%d  %s\n', j, uLINK(j).name);
    PrintLinkName(uLINK(j).child);
    PrintLinkName(uLINK(j).sister);
end
