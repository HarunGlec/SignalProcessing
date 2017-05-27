function x = unit_pulse( L,P )%define a function
    x=zeros(1,L); %Create a matrix just contain zero until to L
    for ii=P:L
        x(ii)=1; % All points after P indis will be 1 
    end
end

