import 'dart:collection';

class Graph {
  Map<String, Map<String, int>> adjList = {};

  void addEdge(String u, String v, int weight) {
    adjList.putIfAbsent(u, () => {});
    adjList.putIfAbsent(v, () => {});
    adjList[u]![v] = weight;
    adjList[v]![u] = weight; // undirected graph (like roads)
  }

  Map<String, int> dijkstra(String start) {
    Map<String, int> distances = {};
    Map<String, bool> visited = {};
    PriorityQueue<MapEntry<String, int>> pq =
        PriorityQueue((a, b) => a.value.compareTo(b.value));

    // initialize distances
    for (var node in adjList.keys) {
      distances[node] = node == start ? 0 : 999999;
      visited[node] = false;
    }

    pq.add(MapEntry(start, 0));

    while (pq.isNotEmpty) {
      var current = pq.removeFirst();
      String u = current.key;

      if (visited[u]!) continue;
      visited[u] = true;

      for (var neighbor in adjList[u]!.keys) {
        int newDist = distances[u]! + adjList[u]![neighbor]!;
        if (newDist < distances[neighbor]!) {
          distances[neighbor] = newDist;
          pq.add(MapEntry(neighbor, newDist));
        }
      }
    }

    return distances;
  }
}

void main() {
  Graph g = Graph();

  // Simulating a GPS road network
  g.addEdge("Home", "School", 7);
  g.addEdge("Home", "Supermarket", 3);
  g.addEdge("Supermarket", "School", 2);
  g.addEdge("School", "Office", 5);
  g.addEdge("Supermarket", "Office", 10);

  var shortestPaths = g.dijkstra("Home");

  print("Shortest distances from Home:");
  shortestPaths.forEach((node, dist) {
    print("Home → $node = $dist km");
  });
}
