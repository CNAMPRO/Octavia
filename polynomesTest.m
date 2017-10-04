## Polynomes
p = [3 2 1]
y = polyval(p,[-1,0,1,2])

## racines d'un polynome
racines=roots(p)

## somme de deux polynomes
p=[1 2 3 4] % p(x)= 4 + 3x + 2x^2 +x^3
q=[0 4 5 6] % q(x)= 6 + 5x + 4x^2 (+0x^3)
s=p+q % s(x)=10 + 8x + 6x^2 +x^3

# produit de deux polynomes
p=[1 2 3 4] % p(x)=4+3x+3x^2+x^3
q=[4 5 6] % q(x)=6+5x+4x^2
u=conv(p,q) % u(x)=24+38x+43x^2+28x^3+13x^4+4x^5

## calculer le polynome d derivee
p=[3 2 1] % p(x) =1+2x+3x^2
polyder(p) % p’(x)=2+6x
