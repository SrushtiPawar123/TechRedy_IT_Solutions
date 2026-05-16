import 'dart:collection';

class Node {
  int data;
  Node? left, right;

  Node(this.data);
}

void levelOrder(Node? root) {
  if (root == null) return;

  Queue<Node> q = Queue<Node>();
  q.add(root);

  while (q.isNotEmpty) {
    Node current = q.removeFirst();
    print(current.data);

    if (current.left != null) q.add(current.left!);
    if (current.right != null) q.add(current.right!);
  }
}

void main() {
  Node root = Node(10);
  root.left = Node(5);
  root.right = Node(20);
  root.left!.left = Node(3);
  root.left!.right = Node(7);

  print("Level Order Traversal:");
  levelOrder(root);
}
