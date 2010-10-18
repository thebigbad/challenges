#!/usr/bin/rexx

sum = 0

do i = 3 to 999 by 3
  sum = sum + i
end

do i = 5 to 999 by 5
  sum = sum + i
end

do i = 15 to 999 by  15
  sum = sum - i
end

say sum
