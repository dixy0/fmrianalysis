function isc = isc_loo(x)
% Calculate inter subject correlation (ISC) using a leave-one-out method
% (LOO)

n = size(x,2);

isc = NaN(n,1);
for subji = 1:n
    isc(subji) = corr(x(:,subji),mean(x(:,[1:n-1 n+1:end]),2));
end
