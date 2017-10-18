# Script Verif
P =[-2 4; 0 0; 1 1];
x = [-1 0 2]; 

nP=naiveTest(P);
nE = naiveEval(nP, x);

disp('Matrice P :');
disp(P);
disp('Vecteur x : ');
disp(x);
disp('Resolution par la methode naive :');
disp(nE);
disp('Resolution par la methode LaGrange :');
lG = lagrange(P, x);
disp(lG);
disp('Resolution par la methode Newton :');

nT = newton(P, x);
disp(nT);

