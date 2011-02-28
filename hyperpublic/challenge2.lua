#!/usr/bin/lua

denoms = {98, 42, 23, 17, 3, 2}

opt = {}

function min (n)
  opt[n] = math.huge
  for i,denom in ipairs(denoms) do
    if denom == n then
      opt[n] = 1
      return
    end
    if (denom < n) and opt[n - denom] then
      soln = opt[n - denom] + 1
      if soln < opt[n] then opt[n] = soln end
    end
  end
end

for i=2,2349 do
  min(i)
end

answer = 1

for i,points in ipairs({2349, 2102, 2001, 1747}) do
  t = opt[points]
  answer = answer * t
end

print(answer)
