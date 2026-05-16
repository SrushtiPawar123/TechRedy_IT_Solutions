import 'dart:collection';

class Node {
  int data;
  Node? left, right;

  Node(this.data);
}

List<List<int>> levelOrder(Node? root) {
  List<List<int>> result = [];
  if (root == null) return result;

  Queue<Node> q = Queue<Node>();
  q.add(root);

  int level = 0;
  while (q.isNotEmpty) {
    int levelSize = q.length; // number of nodes at current level
    List<int> currentLevel = [];

    for (int i = 0; i < levelSize; i++) {
      Node current = q.removeFirst();
      currentLevel.add(current.data);

      if (current.left != null) q.add(current.left!);
      if (current.right != null) q.add(current.right!);
    }

    result.add(currentLevel);
    print("Level $level → ${currentLevel.join(', ')}");
    level++;
  }

  return result;
}

void main() {
  Node root = Node(10);
  root.left = Node(5);
  root.right = Node(20);
  root.left!.left = Node(3);
  root.left!.right = Node(7);

  print("🌳 Level Order Traversal (with levels):");
  var traversal = levelOrder(root);

  print("\nTraversal as List of Lists:");
  print(traversal);
}
