class Solution {
  int findPoisonedDuration(List<int> timeSeries, int duration) {
    if (duration == 0) return 0;

    int ans = 0;

    for (int i = 0; i + 1 < timeSeries.length; i++) {
      ans += (timeSeries[i + 1] - timeSeries[i] < duration)
          ? (timeSeries[i + 1] - timeSeries[i])
          : duration;
    }

    return ans + duration;
  }
}

void main() {
  Solution s = Solution();
  print(s.findPoisonedDuration([1, 4], 2)); // 4
}

// This Dart program calculates the total time a character remains poisoned based on attack times 
// and a fixed poison duration.
// Each attack starts a poisoning effect that lasts for duration seconds,
// but if another attack happens before the previous poison ends,
// the effects overlap instead of stacking fully.
// The loop goes through consecutive attack times and adds 
// either the full duration or the time gap between attacks,
// whichever is smaller, to avoid double-counting overlapping poison time.
// After processing all consecutive attacks,
// it adds one final duration because the last attack always contributes 
// its full poison time. For example, with attack times [1, 4] and duration 2,
// the poison lasts from time 1 to 3 and again from 4 to 6, giving a total poisoned 
// time of 4.