class ListNode {
  int val;
  ListNode? next;

  ListNode(this.val, [this.next]);
}

class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    ListNode dummy = ListNode(0);
    ListNode curr = dummy;
    int carry = 0;

    while (l1 != null || l2 != null || carry != 0) {
      if (l1 != null) {
        carry += l1.val;
        l1 = l1.next;
      }
      if (l2 != null) {
        carry += l2.val;
        l2 = l2.next;
      }

      curr.next = ListNode(carry % 10);
      carry ~/= 10;
      curr = curr.next!;
    }

    return dummy.next;
  }
}
void printList(ListNode? node) {
  while (node != null) {
    print(node.val);
    node = node.next;
  }
}

void main() {
  
  ListNode l1 = ListNode(2, ListNode(4, ListNode(3)));

 
  ListNode l2 = ListNode(5, ListNode(6, ListNode(4)));

  Solution solution = Solution();
  ListNode? result = solution.addTwoNumbers(l1, l2); 

  printList(result);
}


// This Dart code defines a ListNode class to represent nodes in a singly linked list and a Solution class with an addTwoNumbers method. 
// The addTwoNumbers method takes two linked lists, l1 and l2, representing two non-negative integers with digits stored in reverse order,
// and returns a new linked list representing their sum. It iterates through both lists simultaneously, adding corresponding digits and any carry from the previous sum. 
// A dummy node simplifies the creation of the result list, and the carry is updated after each digit addition and carried over to the next sum. Finally,
// the main function demonstrates the usage by creating two sample linked lists (342 and 465), adding them using the addTwoNumbers method,
// and then printing the resulting sum (807) to the console.