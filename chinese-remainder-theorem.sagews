#Copyright 2020 Tooryanand Seetohul

  # Licensed under the Apache License, Version 2.0 (the "License");
  # you may not use this file except in compliance with the License.
  # You may obtain a copy of the License at

  #    http://www.apache.org/licenses/LICENSE-2.0

  #Unless required by applicable law or agreed to in writing, software
  #distributed under the License is distributed on an "AS IS" BASIS,
  #WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  #See the License for the specific language governing permissions and
  #limitations under the License.

# Computer Exploration problem 5.2 from Kraft and Washington
# Solving simultaneous linear congruences using the Chinease Remainder Theorem (Classical Version)

import math

n1 = 303799
n2 = 289279
n3 = 410503
n = n1*n2*n3

math.gcd(n1, n2)
math.gcd(1, n3)
# Since they are all co-primes, we can proceed through the Chinese Remainder Theorem. Uniqueness of solution is guaranteed through the Chinese Remainder Theorem

ZZn1ZZ = Integers(n1)
ZZn2ZZ = Integers(n2)
ZZn3ZZ = Integers(n3)
ZZnZZ = Integers(n)


a1 = 257261
a2 = 117466
a3 = 260584

M1 = n2*n3
M2 = n1*n3
M3 = n2*n1

# finding inverses
y1 = int(ZZn1ZZ(M1^-1))
y2 = int(ZZn2ZZ(M2^-1))
y3 = int(ZZn3ZZ(M3^-1))

#Solution is given by final equation
x = a1*M1*y1 + a2*M2*y2 +a3*M3*y3
sol = ZZnZZ(x)
print(sol) # m^3 = x = 24715828888700939

#Use of RSA encrption-decryption here
#decryptyion exponent
factor(n1)
phin1 = 460*658
ZZphin1ZZ = Integers(phin1)
d = ZZphin1ZZ(3^-1)


original = ZZn1ZZ(sol^d)
print(original) #=250519
