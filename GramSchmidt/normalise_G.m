%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 28/11/13 Edward Stevinson
% Function that normalises G

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [norm_G] = normalise_G(G, n, norm_C, x)

norm_G = zeros(n+1, length(x));


    for i = 1:n+1
        
        norm_G(i,:) = G(i, :)./norm_C(1,i);
        
    end


    
    
    
    
end