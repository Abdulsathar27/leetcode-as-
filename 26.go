package main 
import "fmt"
func removeDuplicates(nums []int)int{
	if len(nums) == 0{
		return 0
	}
	var i int = 0
	for j:=1;j<len(nums);j++{
		if nums[i]!=nums[j]{
			i++
			nums[i]=nums[j]
		}
		
	}
	return i + 1
}
func main(){
	nums :=[]int{0,0,1,1,1,2,2,3,3,4}
	k:=removeDuplicates(nums)
	fmt.Println("k =",k)
	fmt.Println("Updated nums = ",nums[:k])
}