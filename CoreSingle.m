%Core function for single-class case
%@a: Normal vector of the hyperplane
%@b: Scalar of the hyperplane
%@xBar: Estimated expectation of x
%@xCov: Estimated covariance matrix of x
function [a, b] = CoreSingle(xBar, xCov, alpha)
    % ========CONSTANTS========
    kappa = sqrt(alpha / (1.0 - alpha));
    invBar = xCov \ xBar;
    zeta = sqrt(xBar' * invBar);
    % ========RETURN========
    a = invBar / (zeta^2 - kappa * zeta);
    b = 1.0;
end