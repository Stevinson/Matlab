%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 22/11/13 Edward Stevinson
% Function that performs Gram-Schmidt operation

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function  [E, G] = gram_schmidt(x, n, V);

G = zeros(n+1, length(x));

E = zeros(n+1, n);

G(1,:) = V(1,:);      % Set G0(x) = V0(x)

for i = 1:n
    
    G(i+1,:) = V(i+1,:);
    
    for j = 1:i  % Note 1:i means that for each incremental vector you can
                 % have one more value of E
        
         E(i+1,j) = innerproduct(x, V(i+1,:), G(j,:)) / innerproduct(x, G(j,:), G(j,:));
         G(i+1,:) = G(i+1,:) - E(i+1,j)*G(j,:);
    end
end

end        