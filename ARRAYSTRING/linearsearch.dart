class Search {
  searchList(List<int> arr, int target) {
    for (int i = 0; i < arr.length; i++) {
      if (arr[i] == target) {
        return i;
      }
    }
    return -1;
  }

  searchString(List<String> char, String target) {
    for (int i = 0; i < char.length; i++) {
      if (char[i] == target) {
        return i;
      }
    }
    print('not found');
  }

  searchObject(List<person> objects, person target) {
    for (int i = 0; i < objects.length; i++) {
      if (objects[i].name==target.name&&objects[i].age==target.age) {
        print("value found at position ${i}");
      }
    }
    return -1;
  }
}

class person {
  String? name;
  int? age;

  person(this.name, this.age);
}

void main() {
  Search values = Search();

  List<int> arr = [1, 2, 34, 6, 7, 8, 9];
  int target = 8;
  var ressu = values.searchList(arr, target);
  print(ressu);

  List<String> char = [
    'jaseem',
    'adnan',
    'shafeeq',
    'rahul',
    'peter',
    'muhammed'
  ];
  var resu = values.searchString(char, 'peter');
  print(resu);

  List<person> objects = [
    person('jaseem', 12),
    person('jithu', 11),
    person('peter', 78)
  ];
  var result = values.searchObject(objects, person('peter', 78));

  print(result);
}
