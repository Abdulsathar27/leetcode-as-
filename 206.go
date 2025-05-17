package main

import "fmt"


type ListNode struct {
	Val  int
	Next *ListNode
}


func reverseList(head *ListNode) *ListNode {
	var prev *ListNode
	current := head

	for current != nil {
		next := current.Next
		current.Next = prev
		prev = current
		current = next
	}

	return prev
}


func createList(nums []int) *ListNode {
	if len(nums) == 0 {
		return nil
	}
	head := &ListNode{Val: nums[0]}
	current := head
	for _, v := range nums[1:] {
		current.Next = &ListNode{Val: v}
		current = current.Next
	}
	return head
}


func printList(head *ListNode) {
	for head != nil {
		fmt.Print(head.Val)
		if head.Next != nil {
			fmt.Print(" -> ")
		}
		head = head.Next
	}
	fmt.Println()
}


func main() {
	nums := []int{1, 2, 3, 4, 5}

	head := createList(nums)

	fmt.Print("Original List: ")
	printList(head)

	reversed := reverseList(head)

	fmt.Print("Reversed List: ")
	printList(reversed)
}
