function [reel,imaginer,modul,teta] = drawstemofcomplex(z , option)

clc

imaginer=imag(z); %imaginer parts of z
maks=max(imaginer); %to determine maksimum value of Imaginer

reel = real(z); %real parts of z
maks1=max(reel); %to determine maksimum value of Real

modul=sqrt((reel.^2) + (imaginer.^2)); %Modules of z
maks2=max(modul); %to determine maksimum value of Modul

radian=angle(z); %Complex number's arguments angle in Radian form
teta=radian*57.2957795; %Radian to degree
maks3=max(teta); %Maksimum value of Argument

option=lower(option); %To convert to lower case option
count=0;
if size(option)==0
    msgbox('Please enter an option!','Fatal Error :)','error')
    return; %If option is not given
end  
if (size(strfind(option,'none'))~=0)
    return;%If option is 'none' return without figure
end  

if(size(strfind(option,'all'))~=0)
    figure%if option is all then show all graphics
    subplot(4 ,1 ,1)
    stem(reel)
    ylim([0 maks1+2 ])%to determine y-label limits
    title('Real') % Header of graphics
    subplot(4 ,1 ,2)
    stem(imaginer)
    ylim([0 maks+2])%to determine y-label limits
    title('Imaginer')% Header of graphics
    subplot(4, 1, 3)
    stem(modul)
    ylim([0 maks2+2])%to determine y-label limits
    title('Modul')% Header of graphics
    subplot(4 ,1 , 4)
    stem(teta)
    ylim([0 maks3+2])%to determine y-label limits
    title('Argument')% Header of graphics
    return;
end
if(size(strfind(option,'r')) ~=0)
  count = count+1; %to understand how many graphics we need
end
if(size(strfind(option,'i')) ~=0)
  count = count+1; %to understand how many graphics we need
end
if(size(strfind(option,'m')) ~=0)
  count = count+1; %to understand how many graphics we need
end
if(size(strfind(option,'a')) ~=0)
  count = count+1; %to understand how many graphics we need
end

figure
for n=1:count
    if size(strfind(option,'r')) ~=0
        subplot(count,1 ,n)% if option has 'r', plot real graphic
        stem(reel)
        ylim([0 maks1+2 ])
        title('Real')
        option=strrep(option,'r','');% delete 'r' from option
    elseif size(strfind(option,'i')) ~=0
        subplot(count,1 ,n)% if option has 'i', plot imaginer graphic
        stem(imaginer)
        ylim([0 maks+2])
        title('Imaginer')
        option=strrep(option,'i','');% delete 'i' from option
    elseif size(strfind(option,'m')) ~=0
        subplot(count,1, n) %if option has 'm', plot module graphic
        stem(modul)
        ylim([0 maks2+2])
        title('Modul')
        option=strrep(option,'m','');% delete 'm' from option
    elseif size(strfind(option,'a')) ~=0
        subplot(count,1 , n)%if option has 'a', plot argument graphic
        stem(teta)
        ylim([0 maks3+2])
        title('Argument')
        option=strrep(option,'a','');% delete 'a' from option
    end    
end

end