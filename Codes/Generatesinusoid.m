function [s1,s2,s3] = Generatesinusoid( fs  , A , t1 ,t2 , shift )
%%This function will generate random 3 sinusoid.
f1=randi(30, 1 , 1)+10
s1=sinusoid( fs  ,f1 , A , t1 ,t2 , shift);

f2=randi(30, 1 , 1)+10
s2=sinusoid( fs  ,f2, A , t1 ,t2 , shift);

f3=randi(30, 1 , 1)+10
s3=sinusoid( fs  ,f3, A , t1 ,t2 , shift);

end

