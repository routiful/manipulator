function idx = FindRoute(to)
global uLINK

i = uLINK(to).mother;
if i == 1
    idx = to;
else
    idx = [FindRoute(i) to];
end
