class Hastable {
  List<List<int>>? table;
  late int size;

  Hastable(int size) : table = List.generate(size, (index) => []) {
    this.size = size;
  }
  int Hasshfunction(dynamic key) {
    return key.hashCode.abs() % size;
  }

  void insert(dynamic key, int value) {
    int index = Hasshfunction(key);
    table![index].add(value);
  }

  void display() {
    for (int i = 0; i < size; i++) {
      List<int> temp = table![i];
      print(temp);
    }
  }

  List<int> search(dynamic key) {
    int index = Hasshfunction(key);
    return table![index];
  }

  void remove(dynamic key, int value) {
    int Index = Hasshfunction(key);
    table![Index].remove(value);
  }
}

void main() {
  Hastable values = Hastable(100);
  values.insert("jaseem ca", 23);
  values.insert(" ca", 3);
  values.insert("jas", 2);

  print(values.search("jaseem ca"));

  values.display();
}
