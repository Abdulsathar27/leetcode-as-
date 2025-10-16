class Solution {
  List<double> convertTemperature(double celsius) {
    return [celsius + 273.15, celsius * 1.8 + 32];
  }
}

void main() {
  Solution s = Solution();
  print(s.convertTemperature(36.5));
}

// The convertTemperature method applies the standard conversion formulas:Kelvin: The temperature in Kelvin is 
// calculated as $\text{Celsius} + 273.15$.Fahrenheit: The temperature in Fahrenheit is calculated as $\text{Celsius}
// \times 1.8 + 32$.The method uses Dart's list literal syntax ([...]) to concisely return a list containing 
// the two resulting temperatures. For the input of $36.5^\circ\text{C}$,
// the output will be a list containing $36.5 + 273.15 = 309.65 \text{K}$ and $36.5 \times 1.8 + 32 = 97.7^\circ\text{F}$.