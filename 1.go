package main 
import "fmt"
func twoSum(nums []int,target int )[]int {
	for i:= 0; i<len(nums);i++{
		for j:=i+1;j<len(nums);j++{
			if nums[j]==target-nums[i]{
				return [] int {i,j}
			} 
		}
	}
	return []int{}
}

func main(){
	result:=twoSum([]int{2,7,11,15},9)
	fmt.Println(result)
}