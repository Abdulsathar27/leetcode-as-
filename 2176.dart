class Solution {
  int countPairs(List<int> nums, int k) {
    int pairs = 0;

    for (int i = 0; i < nums.length - 1; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        if (nums[i] == nums[j] && (i * j) % k == 0) {
          pairs++;
        }
      }
    }

    return pairs;
  }
}

void main() {
  var sol = Solution();
  print(sol.countPairs([3,1,2,2,2,1,3], 2)); 
  print(sol.countPairs([1,2,3,4], 1));       
}

// This Dart code counts the number of pairs of indices (i,j)
// in a list nums that satisfy two conditions:

// The elements at those indices are equal: nums[i]==nums[j].

// The product of the indices is divisible by k: (i⋅j)(modk)=0.

// The countPairs method uses two nested loops to check every unique pair of indices 
// (i,j) where i<j. If both conditions are met for a pair, a counter pairs is incremented. The final count is then returned.

// For the example [3, 1, 2, 2, 2, 1, 3] and k=2, the "good" pairs are:

// (0,6): nums[0]=3,nums[6]=3. 0⋅6=0. 0(mod2)=0.

// (2,3): nums[2]=2,nums[3]=2. 2⋅3=6. 6(mod2)=0.

// (2,4): nums[2]=2,nums[4]=2. 2⋅4=8. 8(mod2)=0.

// (3,4): nums[3]=2,nums[4]=2. 3⋅4=12. 12(mod2)=0.

// The total count is 4.