#!/usr/local/bin/io

m := 600851475143
n := 1

while(n < m,
  n = n + 2
  if(m % n == 0,
    m = m / n
  )
)

n println
