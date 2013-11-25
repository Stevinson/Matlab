%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% script testsincos
% 21/11/13
%
% Computes the integral of fourier base functions over a period for a range
% of different frequencies. It stores the integral result as elements of a
% 2D array. 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

coscos = zeros(7);
for m = 0:6;
    for n = 0:6;
        coscos(m+1, n+1) = fs_orthog( 1, 1000, m, n, 'cc');
    end
end

sinsin = zeros(7);
for m = 0:6;
    for n = 0:6;
        sinsin(m+1, n+1) = fs_orthog( 1, 1000, m, n, 'ss');
    end
end

sincos = zeros(7);
for m = 0:6;
    for n = 0:6;
        sincos(m+1, n+1) = fs_orthog( 1, 1000, m, n, 'sc');
    end
end
