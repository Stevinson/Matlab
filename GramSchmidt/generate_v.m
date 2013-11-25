%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 25/11/13 Edward Stevinson
% Function that generates V

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function V = generate_v(x, n);
  
V = zeros(n, length(x));

    for i = 1:n
        for j = 1:length(x)
        V(i,j) = x(j)^i;
        end
    end

end