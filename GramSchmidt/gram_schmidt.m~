%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 22/11/13 Edward Stevinson
% Function that performs Gram-Schmidt operation

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function  g = gram_schmidt(n, x, v);

g = zeros(n, length(x));

e = zeros(n, length(x));

for 




















%%%%%%%%%%%%%%%%%%%%%%%%
% I think everything after this is now irrelevent

function [Q,R] = gram_schmid(X)


[m,n] = size(X);   % form matric the size of X
Q = zeros(m,n);    % n orthonormal vectors q1, q2, ... qn
R = zeros(n,n);
                   % Set Q and R to a zero matrix to begin

                   
                   
if X == zeros(m,n)
    error('There does not exist any type of basis for the zero vector space');
end



for j = 1:n
    v = X(:,j);        % Cycles through the columns of X
    
    for i = 1:j-1;
        R(i,j) = Q(:,i)'*X(:,j);   % dot product of and x
        v = v - R(i,j)*Q(:,i);      % Subtract the projection
    end
    R(j,j) = norm(v);
    Q(:,j) = v/R(j,j);   % Normalise v to be next unit vector
end


% alternative method below


function [Q,R]=gschmidt(V)
% Input: V is an m by n matrix of full rank m<=n 
% Output: an m-by-n upper triangular matrix R
% and an m-by-m unitary matrix Q so that A = Q*R. 
[m,n]=size(V);
R=zeros(n);
R(1,1)=norm(V(:,1));
Q(:,1)=V(:,1)/R(1,1);
for k=2:n
    R(1:k-1,k)=Q(:,1:k-1)'*V(:,k);
    Q(:,k)=V(:,k)-Q(:,1:k-1)*R(1:k-1,k);
    R(k,k)=norm(Q(:,k));
    Q(:,k)=Q(:,k)/R(k,k);
end
    
  
        
        
        