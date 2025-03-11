from math import sqrt

phi = (1 + sqrt(5)) / 2
psi = (1 - sqrt(5)) / 2

fib1 = []
for i in range(11):
  result = (pow(phi, i) - pow(psi, i)) / sqrt(5)
  fib1.append(round(result, 3))
print(fib1)

fib2 = [0, 1, 1]
for _ in range(8):
  fib2.append(fib2[-1] + fib2[-2])
print(fib2)