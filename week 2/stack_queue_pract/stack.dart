class Node {
  dynamic data;
  Node? next;
  Node(this.data);
}

class Stack {
  Node? top;

  void push(dynamic data) {
    Node newNode = Node(data);
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

  void problem() {
    Node? current = top;
    List<int> result = [];
    while (current != null) {
      if (int.tryParse(current.data) != null) {
        result.add(int.parse(current.data));
      } else if (current.data == 'a') {
        result.removeLast();
      } else if (current.data == 'd') {
        int double = result[0] * 2;
        result.add(double);
      } else if (current.data == '+') {
        int sum = result[0] + result[1];
        result.add(sum);
      } else {
        return;
      }
      current = current.next;
    }
    print(result);
  }
}

void main(List<String> args) {
  Stack stack = Stack();
  stack.push('+');
  stack.push('d');
  stack.push('a');
  stack.push('2');
  stack.push('5');
  stack.problem();
  // stack.pop();
  // stack.display();
}
