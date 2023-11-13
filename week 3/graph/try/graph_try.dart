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
    for (var a in map.keys) {
      stdout.write('$a  :');
      for (var b in map[a]!) {
        stdout.write(' $b');
      }
      print('');
    }
  }

  void delete(int data) {
    map.remove(data);
    for (var a in map.values) {
      if (a.contains(data)) {
        a.remove(data);
      }
    }
  }

  void deleteEdge(int vertex, int vertex2) {
    if (map[vertex]!.contains(vertex2)) {
      map[vertex]!.remove(vertex2);
    }
  }

  void dfs(int start) {
    Set<int> visited = {};
    _dfsHelper(start, visited);
  }

  void _dfsHelper(int start, Set<int> visited) {
    visited.add(start);
    stdout.write(start);
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
      stdout.write("$current   ");
      for (var neighbor in map[current] ?? []) {
        if (!visited.contains(neighbor)) {
          visited.add(neighbor);
          queue.add(neighbor);
        }
      }
    }
  }
}

void main(List<String> args) {
  Graph graph = Graph();
  graph.insert(3, 2, false);
  graph.insert(2, 5, true);
  graph.insert(6, 2, true);
  stdout.write('BFS Traversal: ');
  graph.bfs(5);
  print('');
}
