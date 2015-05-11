function exLagrange()
    x = 0:10;
    y = [];
    z = [];
    
    for i=0:10
        y(end + 1) = 1/(i**3 + 1);
    endfor
    z = 0.5:1:10.5;
    
    w = ilagrange(x, y, z);
    
    plot(z, w, ".");
    axis([0, 1], [0, 11])
    legend("1/(x^3 + 1)")
    title ("Método de Lagrange");
    grid on
end
