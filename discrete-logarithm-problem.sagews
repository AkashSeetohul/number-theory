
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

#Computer Exploration 7.4 form Kraft and Washington

import math

ZZpZZ = Integers(1093)

#Brute Force to solve a discrete Logarithm problem
for x in range(1, 1093):
    if ZZpZZ(5^x) == ZZpZZ(489):
        print(x)
    else:
        x = x + 1

#Coding the Baby-step giant-step method to solve the discrete Logarithm problem

F = math.ceil(sqrt(1093))

list_giant = []
for x in range(1,F+1):
    list_giant.append(ZZpZZ(5^(x*F)))

list_baby = []
for x in range(0,F):
    list_baby.append(ZZpZZ(489*(5^x)))

for giant in list_giant:
    for baby in list_baby:
         if (giant == baby):
            j = list_giant.index(giant) + 1
            i = list_baby.index(baby)
            print((j*F)-i)

