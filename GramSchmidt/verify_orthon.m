%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 28/11/13 Edward Stevinson
% Function that verifies orthonormality

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function [check] = verify_orthon(Y, n)

check = zeros(1);
I = eye(n+1);
   
P = norm(I-Y);
P(P<0.00001) = 0;

if P == 0
    check = 'Yes';
    
else
    check = 'No';
    
end



end