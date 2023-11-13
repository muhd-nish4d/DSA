class Node {
  int data;
  Node? next;
  Node(this.data);
}

class Queue {
  Node? front;
  Node? rear;

  void enqueue(int data) {
    Node? newNode = Node(data);
    if (front == null) {
      front = rear = newNode;
    } else {
      rear?.next = newNode;
      rear = newNode;
    }
  }

  void dequeue() {
    if (front == null) {
      return;
    }
    front = front?.next;
    if (front == null) {
      rear = null;
    }
  }

  void display() {
    Node? current = front;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main(List<String> args) {
  Queue queue = Queue();
  queue.enqueue(4);
  queue.enqueue(9);
  queue.enqueue(8);
  queue.dequeue();
  queue.display();
}
