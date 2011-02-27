#!/usr/bin/lua

-- convert the silly input format into something more useful
iadded = {}

i = 1
for line in io.lines('challenge2input.txt') do
  addedjs = {}
  for j=1,#line do
    if string.sub(line, j, j) == 'X' then
      table.insert(addedjs, j)
    end
  end
  iadded[i] = addedjs
  i = i + 1
end

function score (i)
  addedjs = iadded[i]
  s = #addedjs
  for ji,j in ipairs(addedjs) do
    s = s + score(j)
  end
  return s
end

scores = {}

for i=1,#iadded do
  s = score(i)
  table.insert(scores, s)
end

table.sort(scores)

print(
  string.format(
    "%d%d%d",
    scores[#scores],
    scores[#scores - 1],
    scores[#scores - 2]
  )
)
