List<String> getBalancedSubstrings(List<String> S) {
  List<String> balancedSubstrings = [];

  // Iterate over each string in the list
  for (String str in S) {
    // Iterate over the string S
    for (int i = 0; i < str.length; i++) {
      // Find all substrings starting from index i
      for (int j = i + 2; j <= str.length; j++) {
        String substring = str.substring(i, j);
        if (_isBalanced(substring)) {
          // If the substring is balanced, add it to the list
          balancedSubstrings.add(substring);
        }
      }
    }
  }

  return balancedSubstrings;
}

bool _isBalanced(String substring) {
  // Count occurrences of characters
  Map<String, int> charCount = {};
  for (int i = 0; i < substring.length; i++) {
    String char = substring[i];
    charCount[char] = (charCount[char] ?? 0) + 1;
  }

  // Check if there are exactly two different characters
  if (charCount.keys.length != 2) return false;

  // Check if both characters occur the same number of times
  int count1 = charCount.values.first;
  int count2 = charCount.values.elementAt(1);
  return count1 == count2;
}
