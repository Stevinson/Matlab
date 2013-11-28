%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 25/11/13 Edward Stevinson
% Top level function for Gram-Schmidt

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x = linspace(0,100,101);

number_of_orthonormal_functions = 5;
n = number_of_orthonormal_functions - 1;

% Generate V (linearly independent functions)
V = generate_v(x, n);

% Gram-Schmidt to generate g functions (resulting orthogonal functions)

[E, G] = gram_schmidt(x, n, V);

% e-coefficients

% Verify G-functions are orthogonal

Z = verify_orthog(G, n, x);

% verify_orthog(G, n, x)

% Normalise

% Verify orthonormality

% Plot