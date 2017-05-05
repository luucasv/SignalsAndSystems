t = (-6:0.001:6)';
u_t = u(t, 0);
conva = median(diff(t)) * conv(u_t, u_t, 'same');
fig1 = makeNicePlot(t, conva, '3a', 'y(t) = u(t) * u(t)', 't', 'y(t)');

u_t_1 = u(t, 1);
convb = median(diff(t)) * conv(u_t - u_t_1, u_t, 'same');
fig2 = makeNicePlot(t, convb, '3b', 'y(t) = [u(t) - u(t - 1)] * u(t)', 't', 'y(t)');

convc = median(diff(t)) * conv(u_t - u_t_1, u_t - u_t_1, 'same');
fig3 = makeNicePlot(t, convc, '3c', 'y(t) = [u(t) - u(t - 1)] * [u(t) - u(t - 1)]', 't', 'y(t)');

e_2t = exp(-2 .* t);
convd = median(diff(t)) * conv(u_t, e_2t .* u_t, 'same');
fig4 = makeNicePlot(t, convd, '3d', 'y(t) = u(t) * e^{-2t}u(t)', 't', 'y(t)');

e_t = exp(-1 .* t);
conve = median(diff(t)) * conv(e_t .* u_t, e_2t .* u_t, 'same');
fig5 = makeNicePlot(t, conve, '3e', 'y(t) = e^{-t}u(t) * e^{-2t}u(t)', 't', 'y(t)');