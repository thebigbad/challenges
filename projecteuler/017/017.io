#!/usr/bin/io

list(
  list(191, "one"),
  list(190, "two three four five six seven eight nine"),
  list(10, "ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen"),
  list(100, "twenty thirty forty fifty sixty seventy eighty ninety"),
  list(999 - 9 - 99, "and"),
  list(999 - 99 , "hundred"),
  list(1, "thousand")
) map(v, v last split(" ") map(size) sum * (v first)) sum println
