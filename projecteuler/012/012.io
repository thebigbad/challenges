#!/usr/bin/io

d := method(n,
  d := 1
  lower := 2
  upper := n
  while(lower <= upper,
    if(upper % lower == 0,
      a := 0
      while(upper % lower == 0,
        a = a + 1
        upper = upper / lower
      )
      d = d * (a + 1) // thanks, Hardy
    )
    lower = lower + 1
  )
  d
)

target := 500
n := 3
T := 1 + 2 + 3
while(d(T) <= target,
  n = n + 1
  T = T + n
)

T println
