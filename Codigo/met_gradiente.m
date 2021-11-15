function minimo = met_gradiente(a, f)
    it = 0;
   
    while norm(gradiente(f,a))>1e-8 & it<1000
        d = -gradiente(f,a);
        t = armijo(a,f,d);   
        a = a+t*d;
        it = it+1;
    end
    
    minimo = a;
end