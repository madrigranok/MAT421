function [x] = r(x1, x2)
y1 = evalf(x1); y2 = evalf(x2);
while(y1 * y2>0)
    x1 = x1 - 10;
    x2 = x2 + 10;
    y1 = evalf(x1); y2 = evalf(x2);
end
x = bisection(x1, x2, 0.00005)
end

function [x,x1,x2]=bisection(x1,x2,tol)
dx=x2-x1; f1=evalf(x1); f2=evalf(x2);
i=0;
while dx>tol
    x=(x1+x2)/2; f=evalf(x);
    if f1*f<0
        x2=x; f2=f;
    else
        x1=x; f1=f;
    end
    dx=dx/2;
    i=i+1
    x
end
end

function f=evalf(x)
f=x^3-2*x+2;
end