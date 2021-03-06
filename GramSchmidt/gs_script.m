%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 25/11/13 Edward Stevinson
% Top level function for Gram-Schmidt

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x = 0:1:100;

number_of_orthonormal_functions = 10;
n = number_of_orthonormal_functions - 1;

% Generate V (linearly independent functions)

V = generate_v(x, n);

% Gram-Schmidt to generate g functions (resulting orthogonal functions)
% and E (

[E, G] = gram_schmidt(x, n, V);

% e-coefficients

% Verify G-functions are orthogonal

Z = verify_orthog(G, n, x);

% Create vector of normalising factors

norm_C = normalising_C(Z, n);

% Normalise and verify orthonormality

norm_G = normalise_G(G, n, norm_C, x);

Y = verify_orthog(norm_G, n, x);

Is_norm_G_orthonormal = verify_orthon(Y, n);

% Plot the G functions on a single graph

plot(norm_G); 