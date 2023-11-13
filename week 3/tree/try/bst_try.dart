class Node {
  int data;
  Node? left;
  Node? right;
  Node(this.data);
}

class BinarySearchTree {
  Node? root;

  void insert(int data) {
    if (root == null) {
      root = Node(data);
      return;
    }
    Node? currentNode = root;
    while (true) {
      if (data < currentNode!.data) {
        if (currentNode.left == null) {
          currentNode.left = Node(data);
          break;
        } else {
          currentNode = currentNode.left;
        }
      } else {
        if (currentNode.right == null) {
          currentNode.right = Node(data);
          break;
        }
        currentNode = currentNode.right;
      }
    }
  }

  bool contain(int data) {
    Node? currentNode = root;
    while (currentNode != null) {
      if (data < currentNode.data) {
        currentNode = currentNode.left;
      } else if (data > currentNode.data) {
        currentNode = currentNode.right;
      } else {
        return true;
      }
    }
    return false;
  }

  void delete(int data) {
    if (root != null) {
      root = deleteHelper(root, data);
    }
  }

  Node? deleteHelper(Node? root, int data) {
    if (root == null) {
      return null;
    } else if (data < root.data) {
      root.left = deleteHelper(root.left, data);
    } else if (data > root.data) {
      root.right = deleteHelper(root.right, data);
    } else {
      if (root.left == null && root.right == null) {
        root = null;
      } else if (root.left == null) {
        root = root.right;
      } else if (root.right == null) {
        root = root.left;
      } else {
        Node? rightMinVal = rightMinimum(root.right);
        root.data = rightMinVal!.data;
        root.right = deleteHelper(root.right, rightMinVal.data);
      }
    }
    return root;
  }

  Node? rightMinimum(Node? node) {
    if (node == null) {
      return null;
    } else if (node.left == null) {
      return node;
    } else {
      return rightMinimum(node.left);
    }
  }

  bool validate() {
    if (root != null) {
      List<int> list = [];
      inOrderHelper(root, list);
      for (var i = 1; i < list.length; i++) {
        if (list[i] < list[i - 1]) {
          return false;
        }
      }
    }
    return true;
  }

  // void inOrder(){

  // }

  void inOrderHelper(Node? node, List<int> list) {
    if (node == null) {
      return;
    }
    inOrderHelper(node.left, list);
    list.add(node.data);
    inOrderHelper(node.right, list);
  }
}

void main(List<String> args) {
  BinarySearchTree bst = BinarySearchTree();
  bst.insert(4);
  bst.insert(9);
  bst.insert(2);
  // bst.delete(9);
  print(bst.validate());
}
