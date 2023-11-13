class Node {
  int data;
  Node? left;
  Node? right;
  Node(this.data);
}

class BinarySearchTree {
  Node? root;

  void insert(int data) {
    Node? currentNode = root;
    if (currentNode == null) {
      root = Node(data);
      return;
    }
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
        } else {
          currentNode = currentNode.right;
        }
      }
    }
  }

  bool contains(int data) {
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

  Node? deleteHelper(Node? root, int data) {
    if (root == null) {
      return null;
    } else if (root.data > data) {
      root.left = deleteHelper(root.left, data);
    } else if (root.data < data) {
      root.right = deleteHelper(root.right, data);
    } else {
      if (root.left == null && root.right == null) {
        root = null;
      } else if (root.left == null) {
        root = root.right;
      } else if (root.right == null) {
        root = root.left;
      } else {
        Node? minRight = minRightValue(root.right);
        root.data = minRight!.data;
        root.right = deleteHelper(root.right, minRight.data);
      }
    }
    return root;
  }

  Node? minRightValue(Node? root) {
    if (root == null) {
      return null;
    } else if (root.left == null) {
      return root;
    } else {
      return minRightValue(root.left);
    }
  }

  void delete(int data) {
    if (root != null) {
      root = deleteHelper(root, data);
    } else {
      print('Tree is Empty');
    }
  }

  int getMinValue(Node? current) {
    if (current?.left == null) {
      return current!.data;
    } else {
      return getMinValue(current?.left);
    }
  }

  //Left Root Right
  void inOrder() {
    inOrderHelper(root);
  }

  void inOrderHelper(Node? nodde) {
    if (nodde == null) {
      return;
    }
    inOrderHelper(nodde.left);
    print(nodde.data);
    inOrderHelper(nodde.right);
  }

  //Root Left Right
  void preOrder() {
    preOrderHelper(root);
  }

  void preOrderHelper(Node? nodde) {
    if (nodde != null) {
      print(nodde.data);
      preOrderHelper(nodde.left);
      preOrderHelper(nodde.right);
    }
  }

  //Left Right Root
  void postOrder() {
    postOrderHelper(root);
  }
  void postOrderHelper(Node? nodde) {
    if (nodde != null) {
      postOrderHelper(nodde.left);
      postOrderHelper(nodde.right);
      print(nodde.data);
    }
  }
}

void main(List<String> args) {
  BinarySearchTree bst = BinarySearchTree();
  bst.insert(4);
  bst.insert(2);
  bst.insert(8);
  bst.insert(1); 
  bst.preOrder();
  // print(bst.contains(1));
  // bst.postOrder();
}
