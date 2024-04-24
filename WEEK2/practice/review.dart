// String p = "jaseem peter";

class Stack {
  List<dynamic> arr = [];

  void push(dynamic value) {
    arr.add(value);
  }

  bool isempty() {
    return arr.isEmpty;
  }

  pop() {
    if (isempty()) {
      print("empty");
    }
    return arr.removeLast();
  }

  String reverseString(String input) {
    for (int i = 0; i < input.length; i++) {
      push(input[i]);
    }

    String reversed = "";
    while (!isempty()) {
      reversed += pop();
    }
    return reversed;
  }

  // String reverseWords(String input) {
  //   List<String> words = input.split(' ');
  //   List<String> reversedWords = [];

  //   for (String word in words) {
  //     String reversedWord = '';
  //     for (int i = word.length - 1; i >= 0; i--) {
  //       reversedWord += word[i];
  //     }
  //     reversedWords.add(reversedWord);
  //   }

  //   return reversedWords.join(' ');
  // }

  // String reversewods(String input) {
  //   List<String> words = input.split('');
  //   List<String> reversedwords = [];

  //   for (String word in words) {
  //     String reversedword = '';
  //     for (int i = word.length - 1; i >= 0; i--) {
  //       reversedword += word[i];
  //     }
  //     reversedwords.add(reversedword);
  //   }
  //   return reversedwords.join('');
  // }


  String reverseWords(String input) {
  List<String> words = input.split(' ');
  List<String> reversedWords = [];

  for (String word in words) {
    String reversedWord = '';
    for (int i = word.length - 1; i >= 0; i--) {
      reversedWord += word[i];
    }
    reversedWords.add(reversedWord);
  }

  return reversedWords.join(' ');
}

}

void main() {
  Stack value = Stack();
  String input = "jaseem peter";
  
  // String reverseString = value.reverseString(input);
  String result = value.reverseWords(input);
  print(result);

  // print(reverseString);
}
