#!/usr/local/bin/io
# expects to be run from dir containing sample.txt

sum := 0

f := File with("sample.txt")
f openForReading
f readLines foreach(v, line,
  num := line asNumber
  sum = sum + num
)
f close

sum asString(10) exSlice(0,10) println
