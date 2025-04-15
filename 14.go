package main 
import "fmt"

func longestCommonPrefix(strs []string)string{

	if len(strs)==0{
		return " "
	}
	prefix := strs[0]

	for i := 1;i<len(strs);i++{
		currentStr := strs[i]
		j:= 0
		for j < len(prefix)&& j< len(currentStr)&& prefix[j] == currentStr[j]{
			j++
		}
		prefix = prefix[:j]

		if prefix ==" "{
			return " "
		}
	}
	return prefix

}
func main (){
	testCase := [][]string{
		{"flower","flow","flight"},
		{"dog","racecar","car"},
		{"","b"},
		{"a"},
		{},
		{"same","same","same"},
		{"leet","leetcode","leets","leetc"},
	}

	for i,test := range testCase{
		result := longestCommonPrefix(test)
		fmt.Printf("Test %d: %v\n",i+1,test)
		fmt.Printf("Output :\"%s\"\n\n",result)
	}
}