import 'dart:collection';


class Trienode {
  Map<dynamic, Trienode> children = HashMap();
  bool isEndOfWord = false;
}

class Trie {
  Trienode root = Trienode();
  // String endsymbol = '*';

  insert(String word) {
    Trienode current = root;
    for (int i = 0; i < word.length; i++) {
      String char = word[i];
      current.children.putIfAbsent(char, () => Trienode());
      current = current.children[char]!;
      
    }
    current.isEndOfWord = true;
  }


   bool delete(String word) {
    return _delete(root, word, 0);
  }

  bool _delete(Trienode current, String word, int index) {
    if (index == word.length) {
      // End of word reached
      if (!current.isEndOfWord) {
        return false; // Word not found
      }
      current.isEndOfWord = false; // Unmark the end of the word

      // If no children, node should be deleted
      return current.children.isEmpty;
    }

    String char = word[index];
    Trienode? node = current.children[char];
    if (node == null) {
      return false; // Word not found
    }

    bool shouldDeleteCurrentNode = _delete(node, word, index + 1);

    // If true is returned, delete the mapping of the character and the node
    if (shouldDeleteCurrentNode) {
      current.children.remove(char);
      // Return true if no children are left and it's not the end of another word
      return current.children.isEmpty && !current.isEndOfWord;
    }

    return false;
  }

  bool search(String word) {
    Trienode node = root;
    for (String char in word.split('')) {
      if (!node.children.containsKey(char)) {
        return false;
      }
      node = node.children[char]!;
    }
    return node.isEndOfWord;
  }

  contains(String str) {
    Trienode? node = root;
    for (int i = 0; i < str.length; i++) {
      String letter = str[i];
      if (!node!.children.containsKey(letter)) {
        return false;
      }
      node = node.children[letter];
    }
    return true;
  }

  // contains(String str) {}
}

void main() {
  Trie value = Trie();
  value.insert('a');
  value.insert('d');
  value.insert('n');
  value.insert('a');
  value.insert('a');
  value.insert('n');
  value.insert('a');
  value.insert('r');
  

  print(value.search('r'));
}