class Solution {
  bool containsNearbyDuplicate(List<int> nums, int k) {
    Set<int> seen = {};

    for (int i = 0; i < nums.length; i++) {
      if (seen.contains(nums[i])) {
        return true;
      }

      seen.add(nums[i]);

      if (i >= k) {
        seen.remove(nums[i - k]);
      }
    }

    return false;
  }
}

void main() {
  Solution s = Solution();
  print(s.containsNearbyDuplicate([1, 2, 3, 1], 3)); 
  print(s.containsNearbyDuplicate([1, 0, 1, 1], 1)); 
  print(s.containsNearbyDuplicate([1, 2, 3, 1], 2)); 
}

// This Dart program checks whether a list contains any duplicate numbers such that the two duplicates are within k indices of each other.
// It uses a sliding window technique with a Set to efficiently track recent elements.
// Here’s how it works:

// As the loop goes through each element, it first checks if that element already exists in the seen
// set — if yes, a nearby duplicate is found, and the function immediately returns true.
// If not, it adds the current element to the set.

// If the window size exceeds k, it removes the oldest element (nums[i - k]) to keep the set limited to the last k elements only.