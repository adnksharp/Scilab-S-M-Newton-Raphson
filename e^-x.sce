function f = x(x)
    f = exp(-x) - x;
endfunction
function D = y(x)
    D = -exp(-x) - 1;
endfunction

mprintf("Raíz de la función: e^-x - x = 0\n\n");
c(1) = 0;
i = 1;

while 1
    f = x(c(i));
    D = y(c(i));

    c(i+1) = c(i) - f/D;

    if abs(c(i+1) - c(i)) < (1*10^-15)
        mprintf("Iteraciones:\t%d\nx:\t\t%f\n", i, c(i+1));
        break;
    end
    i = i + 1;
end