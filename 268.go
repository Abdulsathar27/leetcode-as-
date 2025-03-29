package main
import "fmt"

func missingNumber(nums []int) int {
    missing := len(nums)
    for i,num:=range nums {
        missing ^=i^num
    }
    return missing 
}

func main(){
	result:=missingNumber([]int{3,0,1})
	fmt.Println(result)
}