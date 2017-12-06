A = [1 0 3; 2 2 2; 3 5 6]
d=mydet(A);
disp("Resolution par mydet : "), disp (d)
dOctave = det(A);
disp("Resolution par Octave : "), disp (dOctave)