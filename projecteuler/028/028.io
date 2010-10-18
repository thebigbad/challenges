#!/usr/bin/io

nextFour := method(current, step,
  list(1, 2, 3, 4) map(v, current + (step * v))
)

current := 1
sum := current

for(step, 2, 1000, 2,
  theseFour := nextFour(current, step)
  current = theseFour last
  sum = sum + (theseFour sum)
)

sum println
