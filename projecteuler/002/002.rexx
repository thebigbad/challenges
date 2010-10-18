#!/usr/bin/rexx

i = 1
j = 2

sum = 2

do while j <= 4000000
  k = i + j
  if \(k // 2) then
    sum = sum + k

  i = j
  j = k
end

say sum
