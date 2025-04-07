package main

import "fmt"


type ListNode struct {
	Val  int
	Next *ListNode
}

func deleteDuplicates(head *ListNode) *ListNode {
	if head == nil || head.Next == nil {
		return head
	}

	head.Next = deleteDuplicates(head.Next)
	if head.Val == head.Next.Val {
		return head.Next
	}
	return head
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
	nums := []int{1, 1, 2, 3, 3}

	head := createList(nums)

	fmt.Print("Original List: ")
	printList(head)

	head = deleteDuplicates(head)

	fmt.Print("After Removing Duplicates: ")
	printList(head)
}
