class Hastable {
  List<List<dynamic>> table;
  late int size;

  Hastable(int size) : table = List.generate(size, (index) => []) {
    this.size = size;
  }

  int hashFunction(dynamic key) {
    return key.hashCode.abs() % size;
  }

  void insert(dynamic key, dynamic value) {
    int index = hashFunction(key);
    if (!table[index].contains(value)) {
      table[index].add(value);
    } else {
      print("duplicate elements");
    }
  }

  List<dynamic> search(dynamic key) {
    int index = hashFunction(key);
    return table[index];
  }

  void remove(dynamic key, dynamic value) {
    int index = hashFunction(key);
    table[index].remove(value);
  }

  void display() {
    for (int i = 0; i < size; i++) {
      List<dynamic> temp = table[i];
      print(temp);
    }
  }
}

void main() {
  Hastable values = Hastable(10);
  values.insert(1, 'jaseem');
  values.insert(1, 'jaseem');
  values.display();
}
