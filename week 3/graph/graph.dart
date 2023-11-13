import 'dart:collection';
import 'dart:io';

class Graph {
  Map<int, List<int>> map = HashMap();

  void create(int data) {
    map.addAll({data: []});
  }

  void insert(int vertex, int edge, bool isBiDirectional) {
    if (!map.containsKey(vertex)) {
      create(vertex);
    }

    if (!map.containsKey(edge)) {
      create(edge);
    }

    map[vertex]?.add(edge);

    if (isBiDirectional) {
      map[edge]?.add(vertex);
    }
  }

  void display() {
    for (var x in map.keys) {
      stdout.write('$x :');
      for (var y in map[x]!) {
        stdout.write(' $y');
      }
      print('');
    }
  }

  void deleteNode(int data) {
    map.remove(data);

    for (var x in map.values) {
      if (x.contains(data)) {
        x.remove(data);
      }
    }
  }

  void deleteEdge(int vertex1, int vertex2) {
    if (map[vertex1]!.contains(vertex2)) {
      map[vertex1]!.remove(vertex2);
    }
  }

  void dfs(int start) {
    Set<int> visited = {};
    _dfsHelper(start, visited);
  }

  void _dfsHelper(int start, Set<int> visited) {
    visited.add(start);
    stdout.write('$start ');

    for (var neighbor in map[start] ?? []) {
      if (!visited.contains(neighbor)) {
        _dfsHelper(neighbor, visited);
      }
    }
  }

  void bfs(int start) {
    Set<int> visited = {};
    Queue<int> queue = Queue();

    visited.add(start);
    queue.add(start);

    while (queue.isNotEmpty) {
      int current = queue.removeFirst();
      stdout.write('$current ');

      for (var neighbor in map[current] ?? []) {
        if (!visited.contains(neighbor)) {
          visited.add(neighbor);
          queue.add(neighbor);
        }
      }
    }
  }
}
 
void main(List<String> arguments) {
  Graph graph = Graph();
  graph.insert(3, 5, true);
  graph.insert(3, 4, false);
  graph.insert(5, 4, true);
  graph.insert(5, 6, true);

  graph.display();

  stdout.write('DFS Traversal: ');
  graph.dfs(3);
  print('');

  stdout.write('BFS Traversal: ');
  graph.bfs(5);
  print('');
}
