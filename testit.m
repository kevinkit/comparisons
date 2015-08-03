function [ a ] = testit( a,b )
%TESTIT Summary of this function goes here
%   Detailed explanation goes here

    if(a ~= b)
        display('ERROR');
        a = -1;
    else
        display('FINE');
        a = 1;
    end


end

