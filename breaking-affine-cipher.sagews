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


# breaking an affine cipher without knowing the underlying ring structure
# knowledge of plaintext-ciphertext pairs

import random

#ciphertext
c1 = 587888227517740
c2 = 541467807660732
c3 = 56205965404885
c4 = 438174210294258
list_c = [c1, c2, c3, c4]

#plaintext
p1 = 91736751170855
p2 = 125778661436257
p3 = 133230430217511
p4 = 125778660845934
list_p = [p1, p2, p3, p4]
multiple_list = []

for z in range(0,100):
    i = random.randint(0,3)
    j = random.randint(0,3)

    k = random.randint(0,3)
    l = random.randint(0,3)

    diffD1 = list_p[i]-list_p[j]
    diffD2 = list_p[k]-list_p[l]

    if ((diffD1 != 0) and (diffD2 != 0)) and (diffD1 != diffD2):
        diffC1 = list_c[i]-list_c[j]
        diffC2 = list_c[k]-list_c[l]
        
        m1 =lcm(diffD1, diffD2)/diffD1
        m2 =lcm(diffD1, diffD2)/diffD2
        
        multiple = (m2*diffC2 - m1*diffC1)
        multiple_list.append(multiple)

n = gcd(multiple_list)
print(n)
