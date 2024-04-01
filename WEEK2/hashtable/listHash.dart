// ignore_for_file: prefer_initializing_formals

class HashTable {
  List<List<int>> table;
  late int size;

  HashTable(int size) : table = List.generate(size, (index) => []) {
    this.size = size;
  }

  int hashFunction(dynamic key) {
    return key.hashCode.abs() % size;
    
  }

  void insert(dynamic key, int value) {
    int index = hashFunction(key);
    table[index].add(value);
  }

  List<int> search(dynamic key) {
    int index = hashFunction(key);
    return table[index];
  }

  void remove(dynamic key, int value) {
    int index = hashFunction(key);
    table[index].remove(value);
  }

  void displayall() {
    for (int i = 0; i < size; i++) {
      List<int> temp = table[i];
      print(temp);
    }
  }
}

void main() {
  HashTable hashtable = HashTable(10);

  hashtable.insert("peter", 1);
  hashtable.insert("adnu", 2);
  hashtable.insert("jasu", 3);

  print(hashtable.search("adnu"));
  print(hashtable.search("peter"));
  print(hashtable.search(2));

  hashtable.remove("jasu", 1);
  print(hashtable.search("peter"));
  // Output: []
  hashtable.displayall();
}