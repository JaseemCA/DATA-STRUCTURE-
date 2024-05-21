import 'dart:collection';

class trienode {
  Map<dynamic, trienode> children = HashMap();
  bool isEndofnode = false;
}

class Trie {
  trienode root = trienode();
  String endsymbo = '*';

  insert(String word) {
    trienode current = root;

    for (int i = 0; i < word.length; i++) {
      String char = word[i];
      current.children.putIfAbsent(char, () => trienode());
      current = current.children[char]!;
    }
    current.isEndofnode = true;
  }

  bool delete(String word) {
    return Delete(root, word, 0);
  }

  bool Delete(trienode current, String word, int index) {
    if (index == word.length) {
      if (current.isEndofnode) {
        return false;
      }

      current.isEndofnode = false;
      return current.children.isEmpty;
    }
    String char = word[index];

    trienode? node = current.children[char];

    if (node == null) {
      return false;
    }

    bool shouldelete = Delete(node, word, index + 1);
    if (shouldelete) {
      current.children.remove(char);

      return current.children.isEmpty && current.isEndofnode;
    }
    return false;
  }

  bool search(String word) {
    trienode node = root;
    for (String char in word.split('')) {
      if (node.children.containsKey(char)) {
        return false;
      }
      node = node.children[char]!;
    }
    return node.isEndofnode;
  }
}

void main() {
  Trie values = Trie();

  values.insert('a');
  values.insert('b');
  values.insert('c');
  values.delete('a');
  values.search('a');
}
