String removeDuplicates(String input) {
  Map<String, int> frequencyMap = {};
  String result = '';

  
  for (int i = 0; i < input.length; i++) {
    String char = input[i];
    frequencyMap[char] = (frequencyMap[char] ?? 0) + 1;
  }

  
  for (int i = 0; i < input.length; i++) {
    String char = input[i];
    
    if (frequencyMap[char] == 1) {
      result += char; 
    }
  }

  return result;
}

void main() {
  String input = "hello world";
  String result = removeDuplicates(input);
  print("String with duplicates removed: $result"); 
}