package main
import "fmt"

func strStr(haystack string, needle string) int {
    for i:= 0; i<len(haystack);i++{
        if len(needle) + i >len (haystack){
            return -1
        }else if haystack[i:len(needle)+i] == needle{
            return i
        }
    }
    return -1 
}
func main(){
	haystack1 := "hello"
	needle1 := "ll"
	fmt.Printf("Example 1 : haystack = \"%s\", needle = \"%s\",result = %d\n",haystack1,needle1,strStr(haystack1,needle1))

	haystack2 :="aaaaa"
	needle2 :="bba"
	fmt.Printf("Example 2 : haystack = \"%s\",needle = \"%s\",result = %d\n",haystack2,needle2,strStr(haystack2,needle2))

	haystack3 := ""
	needle3 := ""
	fmt.Printf("Example 3 : haystack = \"%s\",needle = \"%s\",result = %d\n",haystack3,needle3,strStr(haystack3,needle3))

	haystack4 := "mississippi"
	needle4 := "issip"
	fmt.Printf("Example 4 : haystack = \"%s\",needle = \"%s\",result = %d\n",haystack4,needle3,strStr(haystack4,needle4))


}