%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 25/11/13 Edward Stevinson
% Top level function for Gram-Schmidt

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

number_of_orthonormal_functions = 6;
n = number_of_orthonormal_functions;

% Generate V (linearly independent functions)
V = generate_v(x, n);

% Gram-Schmidt to generate g functions (resulting orthogonal functions)

G = gram_schmidt(x, n, v);

% e-coefficients

% Verify G-functions are orthogonal

% Normalise

% Verify orthonormality

% Plot