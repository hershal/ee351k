#!/usr/bin/env octave

figure('visible', 'off');

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
