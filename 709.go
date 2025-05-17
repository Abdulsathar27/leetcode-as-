package main 
import (
   "strings"
   "fmt"
) 

func toLowerCase(s string) string {
    return strings.ToLower(s)
}
func main(){
	result:=toLowerCase("Hello")
	fmt.Println(result)
}