String longestUniqueSubstring(String str) {
  if (str.isEmpty) {
    return "";
  }

  String currentSubstring = "";
  String longestSubstring = "";
  Map<String, int> charMap = {};

  for (int i = 0; i < str.length; i++) {
    String currentChar = str[i];
    if (charMap.containsKey(currentChar)) {
      int prevIndex = charMap[currentChar]!;
      currentSubstring = str.substring(prevIndex + 1, i + 1);
      charMap[currentChar] = i;
    } else {
      charMap[currentChar] = i;
      currentSubstring += currentChar;
      if (currentSubstring.length > longestSubstring.length) {
        longestSubstring = currentSubstring;
      }
    }
  }

  return longestSubstring;
}
