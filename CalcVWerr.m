function err = CalcVWerr(Cref, Cnow)

Perr = Cref.p - Cnow.p;
Rerr = Cnow.R' * Cref.R;
Werr = Cnow.R * rot2omega(Rerr); 

err = [Perr; Werr];
end
