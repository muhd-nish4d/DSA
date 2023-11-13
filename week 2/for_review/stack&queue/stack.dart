class Node {
  int data;
  Node? next;
  Node(this.data);
}

class Stack {
  Node? top;

  void push(int data) {
    Node? newNode = Node(data);
    if (top == null) {
      top = newNode;
    } else {
      newNode.next = top;
      top = newNode;
    }
  }

  void pop() {
    if (top != null) {
      top = top?.next;
    }
  }

  void display() {
    Node? current = top;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main(List<String> args) {
  Stack stack = Stack();
  stack.push(3);
  stack.push(8);
  stack.push(2);
  stack.pop();
  stack.display();
}
