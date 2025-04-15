package main 
import "fmt"

func  isValid(s string)bool{
	stack := make([]rune,0)
	brackets := map[rune]rune{
		')':'(',
		'{':'}',
		'[':']',
	}
	for _,char := range s{
		if char == '('|| char == '{' || char == '[' {
			stack = append(stack,char)
		}else{
			if len(stack)==0 || stack[len(stack)-1]!=brackets[char]{
				return false
			}
			stack = stack[:len(stack)-1]
		}
	}
	return len(stack) == 0
}

func main(){

	testCase :=[]string{
		"()",
		"()[]{}",
		"(]",
		"([)])",
		"([])",
		"",
		"{[]}",
		"[",
		"]",
	}
	for i,test := range testCase{
		result := isValid(test)
		fmt.Printf("Test %d: \"%s\"\n",i+1,test)
		fmt.Printf("Output :%t\n\n",result)
	}
}
