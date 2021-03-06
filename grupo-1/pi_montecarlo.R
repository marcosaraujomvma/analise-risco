# Problema: calcular o valor de pi atrav�s de Montecarlo.

n=10000;# n�mero de tiros

x=runif(n, -1, 1)
y=runif(n, -1, 1)
A=0;

#gr�fico
plot.new()
plot.window(xlim = 1.1 * c(-1, 1), ylim = 1.1 * c(-1, 1))

for (i in 1 : n) {
  if (x[i]^2 + y[i]^2 <= 1) { #dentro do c�rculo
    A=A+1;
  
  points(x[i], y[i], pch = '.', col = "blue")
    
  }
  
  else    points(x[i], y[i], pch = '.', col = "red") #fora do c�rculo
}

pi_est = 4*A/n