package main

import (
	"fmt"
	"fullstack/addr"
)

type name func(int, int) int

func main() {
	// fmt.Println("hello")

	// var s string
	// var s1, s2, s3 string = "f", "s", "t"
	// var (
	// 	s = "mystring"
	// 	i = 12
	// 	f = 14.53
	// )

	var iptr *int

	fmt.Println(iptr)

	x := 5
	xptr := &x

	fmt.Println(x, xptr, *xptr, &*xptr)

	fmt.Println(add(1, 2), add2(1, 2))

	r1, r2 := add3(1, 2)
	fmt.Println(r1, r2)

	var tt = func(a name, b int) int {
		return a(1, b)
	}

	fmt.Println(tt(add2, 2))

	fmt.Println(infiniteAdder(1, 2, 3, 4, 5, 6, 7, 8))

	fmt.Println(addr.Add(1, 2))

	sumCloser := adder()

	fmt.Println(sumCloser(1))
	fmt.Println(sumCloser(2))
}

func add(a, b int) int {
	return a + b
}

func add2(a, b int) (result int) {
	result = a + b
	return
}

func add3(a, b int) (int, int) {
	return a + b, a - b
}

func infiniteAdder(inputs ...int) (sum int) {
	for _, v := range inputs {
		sum += v
	}
	return
}

func adder() func(int) int {
	sum := 0
	return func(x int) int {
		sum += x
		return sum
	}
}
