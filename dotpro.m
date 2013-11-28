%% function to compute the inner product of function sample

function dp = dotpro(gn,gm,x)     

%func = @(x) (gn*gm).*exp(-x);
%dp = quadgk(func, 0, inf);

func = (gn.*gm).*exp(-x);        %defining the function to integrate
dp = trapz(x,func);             %using trapezium rule for integration within the limits 0 to inf *matlab unable to do it

end