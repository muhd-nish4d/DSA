class Node {
  int data;
  Node? next;
  Node(this.data);
}

class SLinkedList {
  Node? head;
  Node? tail;

  void addNode(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      tail?.next = newNode;
    }
    tail = newNode;
  }

  void updateValue(int toNext, int data) {
    Node newNode = Node(data);
    Node? temp = head;
    if (temp != null) {
      while (temp != null && temp.data != toNext) {
        temp = temp.next;
      }
      Node? val = temp;
      temp?.next = newNode;
      newNode.next = val?.next;
    }
  }
}

void main(List<String> args) {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  // print(numbers.reversed);
  for (var i = numbers.length; i >= 0; i--) {
    print(numbers[i]);
  }
  int binarySearch(int target) {
    int left = 0;
    int right = numbers.length - 1;
    while (left <= right) {
      int mid = (left + right) ~/ 2;
      if (numbers[mid] == target) {
        return mid;
      } else if (numbers[mid] < target) {
        left = mid + 1;
      } else {
        right = mid - 1;
      }
    }
    return -1;
  }
}
