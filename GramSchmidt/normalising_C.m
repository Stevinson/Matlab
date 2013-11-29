%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 28/11/13 Edward Stevinson
% Function which creates a vector of the normalising constants

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [norm_C] = normalising_C(Z, n)

norm_C = zeros(1,n+1);

    for i = 1:n+1
        C = sqrt(Z(i,i));
        norm_C(1,i) = C;
    end
    
    
    
end