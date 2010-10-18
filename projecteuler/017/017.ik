#!/usr/bin/ioke

[
  [191, "one"],
  [190, "two three four five six seven eight nine"],
  [10, "ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen"],
  [100, "twenty thirty forty fifty sixty seventy eighty ninety"],
  [999 - 9 - 99, "and"],
  [999 - 99 , "hundred"],
  [1, "thousand"]
] map(v, v last split(" ") map(length) sum * (v first)) sum println
