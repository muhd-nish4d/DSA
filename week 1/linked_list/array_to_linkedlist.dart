class Node {
  int data;
  Node? next;
  Node(this.data);
}

class SLinkedList {
  int i = 0;
  Node? head;
  Node? tail;
  void arrayToLinkedList(List<int> arr) {
    while (i < arr.length) {
      Node newValue = Node(arr[i]);
      if (head == null) {
        head = newValue;
      } else {
        tail?.next = newValue;
      }
      i++;
      tail = newValue;
    }
  }

  void printLinkedLIst() {
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main(List<String> args) {
  SLinkedList newv = SLinkedList();
  List<int> hi = [1,2,3,4,5,6,7,8];
  newv.arrayToLinkedList(hi);
  newv.printLinkedLIst();
  print(newv.head?.data);
  print(newv.tail?.data);
}
