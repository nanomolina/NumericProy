function exLagrange()
    x = 0:10;
    y = [];
    z = [];
    for i=0:10
        y(end + 1) = 1/(i**3 + 1);
        z(end + 1) = i + 1/2;
    endfor
    w = ilagrange(x, y, z);
    disp(w)
    plot(x, y, "r--.")
end
