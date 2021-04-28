package main

import "fmt"

func main() {
	l := 0
	d := 2
	for i := 2; i < 1000; i++ {
		cL := 0
		s := make(map[int]bool)
		for j := 10; !s[j]; j = (j % i) * 10 {
			if j == 0 {
				// Doesn't repeat.
				cL = 0
				break
			}
			cL++
			s[j] = true
		}
		if cL > l {
			l = cL
			d = i
		}
	}
	fmt.Println(d)
}
