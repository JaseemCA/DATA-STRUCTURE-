class Hashtable {
  List<List<dynamic>> table;
  late int size;

  Hashtable(int size) : table = List.generate(size, (index) => []) {
    this.size = size;
  }

  int hashfunction(dynamic key) {
    return key.hashCode.abs() % size;
  }

  void insert(dynamic key, dynamic value) {
    int index = hashfunction(key);
    table[index].add(value);
  }

  List<dynamic> search(dynamic key) {
    int Index = hashfunction(key);
    return table[Index];
  }

  void displayall() {
    for (int i = 0; i < size; i++) {
      List<dynamic> temp = table[i];
      print(temp);
    }
  }

  void Remove(dynamic key, dynamic value) {
    int Index = hashfunction(key);
    table[Index].remove(value);
  }

  int sum() {
    int sum = 0;
    for (var elements in table) {
      sum += elements.length;
    }
    return sum;
  }
}

void main() {
  Hashtable values = Hashtable(10);
  values.insert(10, "peter");
  values.insert(20, "peer");
  values.insert(30, "hter");
  values.insert(40, "adnu");
  print(values.sum());
  values.displayall();
}
