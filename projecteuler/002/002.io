#!/usr/local/bin/io

i := 1
j := 2

sum := 2

while(j <= 4000000,
  k := i + j
  if(k % 2 == 0,
    sum = sum + k
  )
  i = j
  j = k
)

sum println
