package main

import "fmt"

func main() {
  d := 366
  s := 0
  for y := 1901; y <= 2000; y++ {
    for m := 1; m <= 12; m++ {
      if d % 7 == 0 {
        s++
      }
      switch m {
      case 1, 3, 5, 7, 8, 10, 12:
        d += 31
      case 2:
        if y % 4 == 0 && (y % 100 != 0 || y % 400 == 0) {
          d += 29
        } else {
          d += 28
        }
      case 4, 6, 9, 11:
        d += 30
      }
    }
  }
  fmt.Println(s)
}
