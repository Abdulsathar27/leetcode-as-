class ListNode {
  int val;
  ListNode? next;

  ListNode(this.val, [this.next]);
}

class Solution {
  ListNode? middleNode(ListNode? head) {
    if (head == null || head.next == null) return head;

    ListNode? slow = head;
    ListNode? fast = head;

    while (fast != null && fast.next != null) {
      slow = slow?.next;
      fast = fast.next?.next;
    }

    return slow;
  }
}

void main() {
  var head = ListNode(1,
      ListNode(2, ListNode(3, ListNode(4, ListNode(5)))));

  var sol = Solution();
  var mid = sol.middleNode(head);
  print(mid?.val); 
}


// This Dart code finds the middle node of a singly linked list.
// The middleNode method uses a two-pointer approach,
// with a slow pointer and a fast pointer, both starting at the head.
// The fast pointer moves two steps at a time, while the slow pointer moves one step.
// When the fast pointer reaches the end of the list, the slow pointer will be exactly at the middle node.
// The main function creates a sample linked list and prints the value of the middle node.