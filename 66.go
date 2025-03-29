package main
import "fmt"
func plusOne(digits []int) []int {
   n:=len(digits)
   for i:=n-1;i>=0;i--{
    digits[i]++
    if digits[i]<10{
        return digits
    }
    digits[i]=0
   }
   digits = append([]int{1},digits...)
   return digits 
    

}
func main(){
	result:=plusOne([]int{1,2,3})
	fmt.Println(result)
}