

class HashTable {
  List<List<dynamic>>? table;
  late int size;

  HashTable(int size) : table = List.generate(size, (index) => []) {
    this.size = size;
  }

  int hashfunction(dynamic key) {
    return key.hashCode.abs() % size;
  }

  void insert(dynamic key, dynamic value) {
    int index = hashfunction(key);
    table![index].add(value);
  }

  void display() {
    for (int i = 0; i < size; i++) {
      List<dynamic> temp = table![i];
      print(temp);
    }
  }

  List<dynamic> search(dynamic key) {
    int index = hashfunction(key);
    return table![index];
  }

  void delete(dynamic key, int value) {
    int index = hashfunction(key);
    table![index].remove(value);
  }
}

void main() {
  HashTable values = HashTable(10);

  values.insert(1, 'peter');
  values.insert(3, 'peter parrker');
  values.insert(2, 'adnan');
  values.insert('moosa', 3);
  
  values.display();
}
