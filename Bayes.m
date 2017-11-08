clc
clear all

%%



pos = zeros(100,1);
%pos(val,1) = 1;
giter = 10000;
gr = zeros(giter,1);

iter = 100000;
baju  = zeros(iter,1);

for j = 1:giter
    val = gen();
    s = 0;
    for i = 1:iter

    b1 = gen();

        if b1 > val
            side = 0;%'right'
            s= s+1;
            baju(i,1) = 1;
        else
            side = 1;%'left'
        end

    end
    
gr(j,1) = s;
end

hist(gr,1000)
%%
function [x] = gen()
    x = rand();
    %x= floor(rand()*100)+1;
end