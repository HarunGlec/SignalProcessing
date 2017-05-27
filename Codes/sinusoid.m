function x= sinusoid (fs , f,a, t1, t2, q) %define a function 
    
    t= t1:(1/fs ):t2 ; %define t between t1 and t2 at intervals of fs
    
    x= a*sin(2*pi*f*t+q);%define sinusoidal(x(n) = A*sin(2*pi*fs*n+Q))function

end