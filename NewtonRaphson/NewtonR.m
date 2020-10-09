function [r, xi, iter] = NewtonR(f,fdx,xi,error)
    iter = 0;
    while abs(subs(f,xi))>error
        xi = xi - subs(f,xi)/subs(fdx,xi); %m�todod
        iter = iter + 1;
    end
    r = (subs(f,xi));
    xi = double(xi);
end