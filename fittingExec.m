P=[-2 4; 0 0; 1 1];
% Pour l’affichage on evaluera les polynomes en les points suivants
x=[-2:.1:2];
% le seul polynome de degre 2 qui interpole ces points est la parabole d’equation y=x^2
ynew=newton(P,x);
% polynome de degre 1 qui fitte ces points
alphalin=fittingpolynomialPoly(P,1)
ylin=fittingpolynomialEval(alphalin,x,1);
% polynome de degre 2 qui fitte ces points
alphapar=fittingpolynomialPoly(P,2)
ypar=fittingpolynomialEval(alphalin,x,2);
figure(1)
plot(P(:,1),P(:,2),’o’,x,ylin,x,ypar,x,ynew,’:’);
% comparons avec les polynomes calcules directement par Octave
figure(2)
olin=polyval(polyfit(P(:,1),P(:,2),1),x);
opar=polyval(polyfit(P(:,1),P(:,2),2),x);
plot(P(:,1),P(:,2),’o’,x,olin,x,opar);




P=[1 6.008; 2.5 15.722; 3.5 27.130 ; 4 33.772; 1.1 5.257; 1.8 9.549; 2.2 11.098];
x=[1:0.1:4];
% n=7; polynome de degre n-1=6 interpolant ces points
ynew=newton(P,x)
% polynome de degre 1 qui fitte ces points
alphalin=fittingpolynomialPoly(P,1)
ylin=fittingpolynomialEval(alphalin,x,1);
% polynome de degre 2 qui fitte ces points
alphapar=fittingpolynomialPoly(P,2)
ypar=fittingpolynomialEval(alphalin,x,2);
plot(P(:,1),P(:,2),’o’,x,ylin,x,ypar,x,ynew,’:’);
