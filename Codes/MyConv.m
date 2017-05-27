function w= MyConv( u,v )
    m= length(u);
    n= length(v);
    for k=1:(n+m-1)
        w(k)=0;
        for j=max(1,k+1-n):1:min(k,m)
            w(k)=w(k)+u(j)*v(k-j+1);
        end
    end
end