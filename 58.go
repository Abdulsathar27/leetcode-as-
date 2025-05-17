package main 
import (
     "fmt"
	 "strings"
)
func lengthOfLastWord(s string) int {
	s = strings.TrimSpace(s)
	  words :=strings.Fields(s)
	  lastwords :=words[len(words)-1]
	  return len(lastwords)
	   
   }
   func main (){
	result:=lengthOfLastWord("Hello World")
	fmt.Println(result)
   }