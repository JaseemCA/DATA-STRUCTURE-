class node {
  dynamic key;
  dynamic data;
  node? next;
  node(this.key, this.data);
}

class Hashtable {
  List<node?>? table;
  int? size;

  Hashtable(this.size) {
    table = List.generate(size!, (index) => null);
  }

  int hasfunction(dynamic key) {
    return key.hashCode.abs()% size!;
  }

  displayall() {
    for (int i = 1; i < size!; i++) {
      node? temp = table?[i];
      while (temp != null) {
        print(temp.data);
        temp = temp.next;
      }
    }
  }

  void insert(dynamic key, dynamic data) {
    int index = hasfunction(key);
    node? newnode = node(key, data);
    
    if (table![index] == null) {
      table?[index] = newnode;
    } else {
      newnode.next = table?[index];
      table?[index] = newnode;
    }
  }

  void search(String key) {
    int index = hasfunction(key);
    if (table?[index] == null) {
      print("Empty");
    } else {
      print(table?[index]?.data);
    }
  }

  delete(dynamic key) {
    int index = hasfunction(key);
    if (table?[index] != null) {
      node? temp = table?[index];
      node? prev;
      while (temp != null) {
        if (temp.key == key) {
          table?[index] = temp.next;
        } else {
          prev?.next = temp.next;
        }
        return;
      }
      prev = temp;
      temp = temp?.next;
    }
  }

  update(dynamic data, dynamic key) {
    int index = hasfunction(key);
    node? temp = table?[index];
    node? newvalue = node(key, data);
    if (temp == null) {
      print(null);
    }
    while (temp != null) {
      if (temp.key == key) {
        table?[index] = newvalue;
      }
      temp = temp.next;
    }
  }
}

void main() {
  Hashtable values = Hashtable(10);
  values.insert(1, "jaseem ca");
  values.insert(3, " ca");
  values.insert(2, "jaseem");
  values.insert(5, "jasca");
  values.update("jaseem pter", 5);
  values.search("5");
  values.displayall();
}
