function f = g(x)
    f = (x^3) - (5 * x^2) + (7 * x) - 3;
endfunction
function D = ii(x)
    D = (3 * x^2) - (10 * x) + 7;
endfunction
function DD = iii(x)
    DD = (6 * x) - 10;
endfunction

mprintf("Raíz de la función: x^3 - 5x^2 + 7x - 3\n\n");
c(1) = 0;
i = 1;

while 1
    f = g(c(i));
    D = ii(c(i));
    DD = iii(c(i));

    c(i+1) = c(i) - ((f * D) / ((D)^2 - (f * DD)));

    if abs(c(i+1) - c(i)) < (1*10^-15)
        mprintf("Iteraciones:\t%d\nx:\t\t%f\n", i, c(i+1));
        break;
    end
    i = i + 1;
end