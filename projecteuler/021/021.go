package main

import "fmt"

func main() {
  d := make(map[int]int)

  sd := 0
  for i := 1; i < 10000; i++ {
    s := 0
    for j := 1; j < i; j++ {
      if i % j == 0 {
        s += j
      }
    }
    if s < i && d[s] == i {
      sd += i
      sd += s
    }
    d[i] = s
  }
  fmt.Println(sd)
}
