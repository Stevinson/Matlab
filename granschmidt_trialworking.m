% main script for computing the e-coefficient for Gram Schmidt
%%
% stating the trend 
% v0 = 1;
% v1 = x;
% v2 = x^2;...

% two addition script used -- 2 functions [dotpro.m and id.m]
%% last edited 22/11/13

Vx = zeros(6,10);   % assume Vx is the 2D matrix of linearly independent function values

for y = 1:10        % value of y/x values
    
    for n0 = 0:5    % to compute the linearly independent set of Vx values. For each value of y (from 1 to 10), compute the v value [v = y^n0]
        v = y^n0;
        Vx(id(n0),y)= v;  % append to the Vx 2D matrix
    end
    
end

G = zeros(5,10);    % G is a vector of the resulting orthogonal functions gn(x)
E = zeros(1,5);     % E is a vector of e coefficient when we are computing each value of gn(x); ie for g2(x), e20 and e21
Ecoeff = zeros(5,5);      % Ecoeff is a vector of all the e coeff used (aligned with x/y values
g(id(0),:) = Vx(1,:);     % assigning g0 to v0 =1 

x = 1:y;            % vector of x values

for n = 1:5         % creating a loop for each value of n (>0)
        
    for m = 0:n-1   % for each value of n, m goes from 0 to n-1 (trend in the e value)
        e_nm = dotpro(Vx(id(n),:),g(id(m),:),x)/dotpro(g(id(m),:),g(id(m),:),x);    % using function to check values
        E(1,m+1) = e_nm;    % appending each column of E vector      
    end
    
    Ecoeff(n,:)= E; % appending the Ecoeff vector for each value of n
                
    for i = 0: n-1
        G(id(i),:)=g(id(i),:);    % appending the G vector
    end
    
    g(id(i+1),:) = Vx(id(n),:)-E*G; % E*G will give the diffrence that should be subtracted away
    
end

%% checking orthogonality

checkorth = zeros(6,6);


for  m = 0:5      %conditions; running m from 0 to 5
    for n = 0:5   %for each value of m, run n from 0 to 5
        output = dotpro(g(id(m),:),g(id(n),:),x);
        checkorth(n+1,m+1) = output;
    end 
end

%% computing normalising constant
NC = zeros (1,6);

for m = 0:5         
    gn_dot = checkorth(m+1,m+1);
    normalising_constant = sqrt(gn_dot);
    NC(1,id(m)) = normalising_constant;
end  

%% normalising functions
G_norm = zeros(6,10);
for x = 1:10
    g1 = g(1:6,x);
    g_norm = g1./transpose(NC);
    g_norm1 = transpose(g_norm);
    G_norm(:,x) = g_norm1;
end

%% verifying orthonormality

checkorthnorm = zeros(6,6);

x1 = 1:10;

for  m = 0:5      %conditions; running m from 0 to 5
     for n = 0:5  %for each value of m, run n from 0 to 5
         norm_output = dotpro( G_norm(id(m),:), G_norm(id(n),:),x1);
         checkorthnorm(n+1,m+1) = norm_output;
     end 
end

 plot(G_norm,'DisplayName','G_norm','YDataSource','G_norm');figure(gcf)