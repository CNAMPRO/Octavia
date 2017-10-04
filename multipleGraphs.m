##multiples courbes sur un meme graph$
x = [-2:0.5:2];
y1 = x.^2;
y2 = x.^3,
plot(x, y1, 'm-', x, y2, 'g*');
legend(['y1'; 'y2'])


subplot(2, 3, 5) # dernier param indice de la case
