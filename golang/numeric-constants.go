package main

import "fmt"

const (
	Big = 1 << 100
	Small = Big >> 99
)

func needInt(x int) int { return x*10 + 1}
func needFloat(x float64) float64 {
	return x * 0.1
}

func main() {
	var f float64
	fmt.Println(needInt(Small))
	fmt.Println(f)
	fmt.Println(needFloat(Small))
	fmt.Println(needFloat(Big))
}