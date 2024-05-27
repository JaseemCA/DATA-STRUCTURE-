class Graph {
  Map<dynamic, List<int>> store = {};

  addvertex(int data) {
    store.putIfAbsent(data, () => []);
  }

  insert(int vertex, int edge, bool isbidirection) {
    if (!store.containsKey(vertex)) {
      addvertex(vertex);
    }
    if (!store.containsKey(edge)) {
      addvertex(edge);
    }
    store[vertex]!.add(edge);
    if (isbidirection) {
      store[edge]!.add(vertex);
    }
  }

  deleteVertex(int vertex) {
    store.remove(vertex);
    store.values.forEach((list) => list.remove(vertex));
  }

  displaya() {
    for (int x in store.keys) {
      print('$x: ${store[x]!.join(' ')}');
    }
  }

  bfs(int vertex) {
    Set<int> visited = {};
    List<int> queue = [];

    queue.add(vertex);

    visited.add(vertex);

    while (queue.isNotEmpty) {
      int current = queue[0];

      queue.removeAt(0);

      for (int i in store[current]!) {
        if (!visited.contains(i)) {
          visited.add(i);
          queue.add(i);
        }
      }
    }
    print(visited);
  }

  dfs(int vertex) {
    if (store.containsKey(vertex)) {
      Set<int> visited = {};

      dfshelper(vertex, visited);
      print(visited);
    } else {
      print("vertex is not found in graph");
    }
  }

  dfshelper(int vertex, Set<int> visited) {
    visited.add(vertex);

    for (int i in store[vertex]!) {
      if (!visited.contains(i)) {
        dfshelper(i, visited);
      }
    }
  }
}

void main() {
  Graph graph = Graph();

  graph.insert(1, 10, false);
  graph.insert(1, 106, false);
  graph.insert(1, 177, false);
  graph.insert(444, 17, false);
  graph.insert(1, 60, false);
  graph.insert(60, 600, true);
  graph.displaya();
  graph.bfs(444);
  graph.dfs(444);

}
