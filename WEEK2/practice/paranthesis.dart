class Stack {
  List<String> arr = [];

  void push(String value) {
    arr.add(value);
  }

  bool isEmpty() {
    return arr.isEmpty;
  }

  String pop() {
    if (isEmpty()) {
      return "";
    }
    return arr.removeLast();
  }
}

bool isValidParentheses(String s) {
  Map<String, String> parenthesesMap = {
    ')': '(',
    '}': '{',
    ']': '[',
  };

  Stack stack = Stack();

  for (int i = 0; i < s.length; i++) {
    String char = s[i];
    if (parenthesesMap.containsValue(char)) {
      
      stack.push(char);
    } else if (parenthesesMap.containsKey(char)) {
     
      if (stack.isEmpty() || stack.pop() != parenthesesMap[char]) {
        return false; 
      }
    }
  }

  return stack.isEmpty();
}

void main() {
  String s = "((()))";
  bool isValid = isValidParentheses(s);
  print("Is '$s' valid? $isValid"); 
}
