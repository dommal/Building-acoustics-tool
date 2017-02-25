function [J] = J_near_ab2(s, t, a, b, k, kpl, eps);

%2nd part of double integrla close/near coincidence case for s > 1

alpha = 0.25.*k.*a.*eps;
x0 = kpl.*a - k.*a;

J1 = 0.25.*i.*(b.^2 - a.*b.*t.*s) .* ((s.^2 - 8.*s + 8).*(asin(1./sqrt(s)) - acos(1./sqrt(s))) + (4 - 2.*s).*sqrt(s - 1));
J2 = i.*a.^2.*t.^2./64 .* (s.^2.*(3.*s - 4).*(s - 4).*(asin(1./sqrt(s)) - acos(1./sqrt(s))) + 2.*sqrt(s - 1).*(s - 2).*(-3.*s.^2 + 8.*s - 8));

J4 = exp(-sqrt(1 + t.^2) .* (alpha.*s + i.*s.*x0));
J =  (J1 + J2) .* J4 / sqrt(1 + t.^2);
