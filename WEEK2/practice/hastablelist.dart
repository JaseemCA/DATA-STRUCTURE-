class Hastable {
  List<List<dynamic>> table;

  late int size;

  Hastable(int size) : table = List.generate(size, (index) => []) {
    this.size = size;
  }

  dynamic hashfun(dynamic key) {
    return key.hashCode.abs() % size;
  }

  void insert(dynamic key, dynamic value) {
    int index = hashfun(key);
    
      table[index].add(value);
    
  }

  List<dynamic> search(dynamic key) {
    int index = hashfun(key);
    return table[index];
  }

  void remove(dynamic key, dynamic value) {
    int index = hashfun(key);

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
  Hastable value = Hastable(10);

  value.insert(1, 'jaseem');
  value.insert(3, 200);
  value.insert(4, 500);
  value.insert(5, 600);
  value.display();
}
