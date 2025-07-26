package main

import (
    "fmt"
    "strings"
)

func defangIPaddr(address string) string {
    return strings.ReplaceAll(address, ".", "[.]")
}

func main() {
    ip := "192.168.0.1"
    defanged := defangIPaddr(ip)
    fmt.Println(defanged) 
}
// This Go (Golang) code defines a function defangIPaddr that "defangs" an IP address string. 
// The function takes a string address as input and uses the strings.
// ReplaceAll utility function to replace every occurrence of a period .
// with [.]. The main function demonstrates this by taking the IP address "192.168.0.1",
// calling defangIPaddr to transform it, and then printing the defanged result, which will be "192[.]168[.]0[.]1".