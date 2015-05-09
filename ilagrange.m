function w = ilagrange(x, y, z)
    assert(length(x) == length(y))
    n = length(x);
    m = length(z);
    w = [];
    for i=1:m
        p = 0;
        for k=1:n
            p += y(k)*l(k, z(i), x);
        endfor
        w(end + 1) = p;
    endfor
end


function res = l(i, x, list_x)
    n = length(list_x);
    res = 1;
    for j=1:n
        if not (j == i)
            res *= (x - list_x(j)) / (list_x(i) - list_x(j));
        endif
    endfor
end
