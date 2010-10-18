#!/usr/bin/io

sum := 0

i := 3
while(i < 1000,
  sum = sum + i
  i = i + 3
)

j := 5
while(j < 1000,
  sum = sum + j
  j = j + 5
)

k := 15
while(k < 1000,
  sum = sum - k
  k = k + 15
)

sum println
