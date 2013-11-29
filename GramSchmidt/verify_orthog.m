%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 28/11/13 Edward Stevinson
% Function which verifies othogonality

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function [Z] = verify_orthog(G, n, x)

Z = zeros(n+1,n+1);

for i = 1:n+1
    for j = 1:n+1
        Z(i,j) = innerproduct(x, G(i,:),G(j,:));
    end
end




end