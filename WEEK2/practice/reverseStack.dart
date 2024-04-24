class Stack {
  List<dynamic> arr = [];

  void push(String value) {
    arr.add(value);
  }

  bool isempty() {
    return arr.isEmpty;
  }

  pop() {
    if (isempty()) {
      print("empty");
    } else {
      return arr.removeLast();
    }
  }

  String reverseString(String input) {
    for (int i = 0; i < input.length; i++) {
      push(input[i]);
    }
    String reverse = '';
    while (!isempty()) {
      reverse += pop();
    }
    return reverse;
  }

  List<String> reverseList( List<String>Input) {
    for (int i = 0; i < Input.length; i++) {
      push(Input[i]);
    }
    List<String> reversed = [];
    while (!isempty()) {
      reversed.add(pop());
    }
    return reversed;
  }

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
  Stack values = Stack();
  String input = "jaseem peter";
  String resu = values.reverseString(input);
  print(resu);
  List<String> Input = ["jaseem", "adnan", "faisal", "fareed"];
 List<String> result = values.reverseList(Input);

  print(result);
}
