package main 
import "fmt"
func romanToInt(s string) int {
    sa := map[byte]int{
        'I':1,
        'V':5,
        'X':10,
        'L':50,
        'C':100,
        'D':500,
        'M':1000,
    }
    var rom int
    for i:= 0; i<len(s);i++{
        if i!=len(s)-1&& sa[s[i]]<sa[s[i+1]]{
            rom -=sa[s[i]]
            
        }else{
            rom +=sa[s[i]]
        }
    }
    return rom 
}
func main(){
	result:=romanToInt("IX")
	fmt.Println(result)
}