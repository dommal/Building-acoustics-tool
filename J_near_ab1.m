function [J] = J_near_ab1(s, t, a, b, k, kpl, eps);

%1st part of double integrla close/near coincidence case for s < 1

alpha = 0.25.*k.*a.*eps;
x0 = kpl.*a - k.*a;

J1 = i.*pi.*(3./128.*a.^2.*t.^2.*s.^4 + 0.125.*(-a.*b.*t - a.^2.*t.^2).*s.^3 + 0.125.*(b.^2 + a.^2.*t.^2 + 8.*a.*b.*t).*s.^2 + (-a.*b.*t - b.^2).*s + b.^2);
J2 = acosh(1./sqrt(s)).*(-3./32.*a.^2.*t.^2.*s.^4 + 0.5.*(b.^2 - 4.*a.*b.*t + a.^2.*t.^2).*s.^2 - 4.*b.^2);
J3 = sqrt(1 - s).*(-3./32.*a.^2.*t.^2.*s.^3 - 0.0625.*a.^2.*t.^2.*s.^2 + (-a.^2.*t.^2./12 + b.^2./2 + 2./3.*a.*b.*t).*s + (-a.^2.*t.^2./6 + 3.*b.^2 + 4./3.*a.*b.*t));
J4 = exp(-sqrt(1 + t.^2) .* (alpha.*s + i.*s.*x0));
J =  (J1 + J2 + J3) .* J4 / sqrt(1 + t.^2);
