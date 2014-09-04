#!/usr/bin/env octave

figure('visible', 'off');
## ber1 = @(x) -real(besselj(1,x*exp(pi*1i/4)));
## bei1 = @(x) imag(besselj(1,x*exp(1i*pi/4)));
## delta = @(x) ber1(x)-bei1(x);
## rho0 = fsolve(delta,4);
## x=0:0.1:4;
## plot(x,delta(x), 'linewidth' ,2);
## hold on;
## plot([rho0], [0],  'o',  'linewidth', 10);
## text(rho0, 0.15,  '\colorbox{white}{$\rho_0$}',
##      'horizontalalignment', 'center');
## text(rho0, -0.2,
##      sprintf("\\colorbox{white}{$%.2f$}", rho0),
##      'horizontalalignment', 'center');
## title ("");  legend ("off");  grid();
## xlabel('$\rho$');
## ylabel('$\text{ber}_1\rho-\text{bei}_1\rho$');

x=0:.025:5;

y1 = min(5, max(6-x, 1));
y2 = min(5, max(7-x, 1));

plot(x, y1, '--', "color", "black")
hold on;
plot(x, y2, '--', "color", "black")

patch([x;x], [y1;y2], "FaceColor", [.5,.5,.5])
xlabel("power output of subcell $a$ (Volts)")
ylabel("power output of subcell $b$ (Volts)")
xlim([0 5])
ylim([0 5])

hold off;

print -depslatex "-S300,300" "power-fig.tex"
