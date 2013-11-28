function [Z] = verify_orthog(G, n, x)

Z = zeros(n+1,n+1);
% check = zeros(1);
%I = eye(n+1,length(x));

for i = 1:n+1
    for j = 1:n+1
        Z(i,j) = innerproduct(x, G(i,:),G(j,:));
    end
end

% P = norm(I-Z);

%if P == 1
%    check = 1;
%end


end