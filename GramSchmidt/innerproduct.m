%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 24/11/13 Edward Stevinson
% Function generates the inner product of two functions

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function [result] = innerproduct(x, y1, y2)
   
    result = trapz(x, y1.*y2.*exp(-x));
    
end