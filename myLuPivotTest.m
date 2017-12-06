printf(...
"===========================================================\n\
Test 1\n\
===========================================================\n");
% mylu et mylupivot donnent le meme resultat
A=[1 0 3; 2 2 2; 3 6 4]
[L,U,P]=myluPivot(A)

% Verifions notre resultat, i.e. LU=PA
LU=L*U
PA=P*A
% Comparons le resultat avec celui d’Octave
[Loctave,Uoctave,Poctave]=lu(A)
printf(...
"===========================================================\n\
Test 2\n\
===========================================================\n");
A=[1 1 3; 2 2 2; 3 6 4]
[L,U,P]=myluPivot(A)
% Verifions notre resultat, i.e. LU=PA
LU=L*U
PA=P*A
% Comparons le resultat avec celui d’Octave
[Loctave,Uoctave,Poctave]=lu(A)
% On ne peut pas utiliser mylu mais forcement mylupivot
% [L,U]=mylu(A)
printf(...
"===========================================================\n\
Test 3\n\
===========================================================\n");
A=[1 2; 1 2]
% det(A)=0 mais on peut ecrire A=LU car det(A_1)~=0
[L,U,P]=myluPivot(A)
LU=L*U
PA=P*A
printf(...
"===========================================================\n\
Test 4\n\
===========================================================\n");
A=[0 1; 1 0]
% det(A)~=0 mais det(A_1)=0. On effectue alors le pivot
[L,U,P]=myluPivot(A)
LU=L*U
PA=P*A