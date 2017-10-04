A = [3 1 5; 2 7 0]
B = [2 1 -1 0; 3 0 1 8; 0 -5 3 4]

%A*B # Multiplication simple

D = [-3 0 5]
E = [2;-4;-3]
%D*E ## une seule ligne


F = [2 -4 -3]
%G = [-3;0;5]
G = [-3 0 5]'
F*G

# Correction
%[3 1 5; 2 7 0]*[2 1 -1 0; 3 0 1 8; 0 -5 3 4]
%[-3 0 5]*[2 -4 -3]’ % ce qui equivaut a [-3 0 5]*[2; -4; -3]
%[2 -4 -3]’*[-3 0 5] % ce qui equivaut a [2; -4; -3]*[-3 0 5]