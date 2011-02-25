#!/usr/bin/ruby

def abundant? (n)
  sum = 1
  r = Math.sqrt(n)
  for d in (2...r)
    if n % d == 0
      sum += d + (n / d)
      if sum > n
        return true
      end
    end
  end
  if n % r == 0
    sum += r
  end
  sum > n
end

as = []
as_hash = Hash.new

for i in (12..28123)
  if abundant? i
    as.push i
    as_hash[i] = 1
  end
end

# cannot be written as the sum of two abundant numbers
def cbwatsotabn? (n, as, as_hash)
  half = n / 2
  for a in as
    diff = n - a
    if diff < half
      return true
    end
    if as_hash[diff]
      return false
    end
  end
  return true
end

sum = 0
for n in (1...28123)
  if cbwatsotabn? n, as, as_hash
    sum += n
  end
end
puts sum
