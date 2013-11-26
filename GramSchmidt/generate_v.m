%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 25/11/13 Edward Stevinson
% Function that generates V

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function V = generate_v(x, n);
  
V = zeros(n+1, length(x));

    for i = 1:n+1
        for j = 1:length(x)
        V(i,j) = x(j)^(i-1);
        end
    end

end