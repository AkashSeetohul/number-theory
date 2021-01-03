
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

#finding the seven 2-pseudoprimes less than 2000

pseudo = []
for k in range(2,2001):
    ZZkZZ=Integers(k)
    x = k-1
    if is_prime(k) != true and ZZkZZ(2^(x)) == ZZkZZ(1):
        pseudo.append(k)
print(pseudo)

#Finding the strong 2-pseudoprimes among the seven previously found

for n in pseudo:
    ZZnZZ=Integers(n)
    # factorizing (n-1) into odd and even
    k = 0
    s = n-1
    while (s%2 != 1) and (s > 0):
            s = s/2
            k = k+1
    h = 2^s
    b = ZZnZZ(h)
    y = 0
    while (ZZnZZ(b) != ZZnZZ(1)):
        b_i = b^2
        b = ZZnZZ(b_i)
        y = y+1
    y_last = y-1
    
    if y == 0:
        print(n)
    if ZZnZZ(2^(s * 2^y_last)) == ZZnZZ(-1):
        print(n)
