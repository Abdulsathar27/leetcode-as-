class Solution {
  int arithmeticTriplets(List<int> nums, int diff) {
    int counter = 0;

    for (int i = 0; i < nums.length; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        for (int k = j + 1; k < nums.length; k++) {
          if (nums[j] - nums[i] == diff && nums[k] - nums[j] == diff) {
            counter++;
          }
        }
      }
    }

    return counter;
  }
}

void main() {
  var sol = Solution();
  print(sol.arithmeticTriplets([0, 1, 4, 6, 7, 10], 3)); 
}


// This Dart code defines a function arithmeticTriplets that counts the number of unique arithmetic triplets in
// a strictly increasing list of integers nums with a given common difference diff. 📏

// Logic Explained
// The method uses three nested loops to iterate through all possible combinations of three distinct indices (i,j,k) such that i<j<k.
// This structure ensures that every triplet is checked exactly once.

// Outer Loop (i): Iterates through the first element of the triplet.

// Middle Loop (j): Starts from i+1, ensuring j>i.

// Inner Loop (k): Starts from j+1, ensuring k>j.

// Inside the innermost loop, an if condition checks the two requirements for an arithmetic triplet:

// nums[j]−nums[i]==diff: The difference between the second and first elements must equal the common difference.

// nums[k]−nums[j]==diff: The difference between the third and second elements must also equal the common difference.

// If both conditions are met, the counter is incremented. The function then returns the final counter of arithmetic triplets found.

// Since the input array nums is strictly increasing, checking i<j<k also guarantees that nums[i]<nums[j]<nums[k].