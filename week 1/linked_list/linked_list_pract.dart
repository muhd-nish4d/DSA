class Node {
  int data;
  Node? next;
  Node(this.data);
}

class SLinkedList {
  Node? head;
  Node? tail;

  // void addNew(data) {
  //   Node newVal = Node(data);
  //   if (head == null) {
  //     head = newVal;
  //   } else {
  //     tail?.next = newVal;
  //   }
  //   tail = newVal;
  // }

  void addNew(int data) {
    Node? newVal = Node(data);
    // Node? temp = head;
    if (head == null) {
      head = newVal;
    } else {
      tail?.next = newVal;
    }
    tail = newVal;
  }

  void addValFirst(int data) {
    Node? newVal = Node(data);
    if (head != null) {
      Node? temp = head;
      head = newVal;
      newVal.next = temp;
    }
  }

  void putValueAfter(int toNext, int data) {
    Node? newVal = Node(data);
    Node? temp = head;
    if (temp == null) {
      return;
    }
    if (tail?.data == toNext) {
      tail?.next = newVal;
      tail = newVal;
      return;
    }
    while (temp != null && temp.data != toNext) {
      temp = temp.next;
    }
    Node? forChange = temp?.next;
    temp?.next = newVal;
    newVal.next = forChange;
  }

  void putValueBefor(int toPrev, int data) {
    Node? temp = head;
    Node? prev;
    Node? newVal = Node(data);
    if (head == null) {
      return;
    }
    if (head?.data == toPrev) {
      prev = head;
      head = newVal;
      newVal.next = prev;
      return;
    }
    while (temp != null && temp.data != toPrev) {
      prev = temp;
      temp = temp.next;
    }
    prev?.next = newVal;
    newVal.next = temp;
  }

  void deleteValue(int data) {
    Node? temp = head;
    Node? prev;
    if (temp == null) {
      return;
    }
    if (head?.data == data) {
      head = head?.next;
      return;
    }
    while (temp != null && temp.data != data) {
      prev = temp;
      temp = temp.next;
    }
    prev?.next = temp?.next;
    if (tail?.data == data) {
      tail = prev;
    }
  }

  void reverseNode() {
    Node? temp = head;
    while (temp != null) {
      temp = temp.next;
    }
  }

  void printNode() {
    Node? temp = head;
    if (temp == null) {
      print('list is empty');
      return;
    }
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main(List<String> args) {
  SLinkedList newList = SLinkedList();
  newList.addNew(10);
  newList.addNew(20);
  newList.addNew(30);
  newList.addNew(40);
  newList.addNew(50);
  newList.putValueAfter(20, 10);
  // newList.putValueBefor(10, 1);
  // newList.(10, 1);
  newList.printNode();
  // print('head ${newList.head?.data}');
  // print('tail ${newList.tail?.data}');
}
