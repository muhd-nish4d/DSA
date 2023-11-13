class Node {
  int? data;
  Node? next;
  Node(this.data);
}

class SLinkedList {
  Node? head = null;
  Node? tail = null;

  void addFirst(int data) {
    Node newNode = Node(data);
    if (head == null) {
      tail = head;
    } else {
      newNode.next = head;
    }
    head = newNode;
  }

  void deleteFirst() {
    Node? temp = head;
    head = temp?.next;
  }

  deleteLast() {
    Node? temp = head;
    if (temp == null) {
      print('empty');
      return;
    } else if (temp.next == null) {
      head = null;
      return;
      // print('empty');
    } else {
      while (temp!.next?.next != null) {
        temp = temp.next;
      }
      temp.next = null;
      tail = temp;
    }
  }

  void deleteValue(int data) {
    Node? temp = head;
    Node? prev;
    if (temp?.data == data) {
      head = temp?.next;
    }
    while (temp != null && temp.data != data) {
      prev = temp;
      temp = temp.next;
    }
    prev?.next = temp?.next;
    if (tail?.data == data) {
      tail = prev;
    }
    while (temp != null) {
      temp = temp.next;
      if (temp?.data == data) {
        deleteValue(data);
      }
    }
    // print(tail?.data);
  }

  void putValue(int value, int data) {
    Node? temp = head;
    Node? newValue = Node(data);
    // if (temp == null) {
    //   return;
    // }
    while (temp != null && temp.data != value) {
      temp = temp.next;
    }
    Node? chan = temp?.next;
    temp?.next = newValue;
    newValue.next = chan;
    if (value == tail?.data) {
      tail = newValue;
    }
    // print(tail?.data);
  }

  // void deleteDuplicate() {
  //   Node? temp = head;
  //   while (temp != null) {
  //     Node? currentVal = temp;
  //     while (currentVal != null) {
  //       if (currentVal.data == temp.data) {
  //         currentVal.next = currentVal.next?.next;
  //       } else {
  //         currentVal = currentVal.next;
  //       }
  //     }
  //     temp = temp.next;
  //   }
  // }
  // void removeDuplicates() {
  //   Node? currentVal = head;

  //   while (currentVal != null) {
  //     Node? temp = currentVal;

  //     while (temp?.next != null) {
  //       if (temp?.next?.data == currentVal.data) {
  //         temp?.next = temp.next?.next;
  //       } else {
  //         temp = temp?.next;
  //       }
  //     }
  //     currentVal = currentVal.next;
  //   }
  // }
  void removeDuplicate() {
    Node? currentValue = head;
    while (currentValue != null) {
      Node? temp = currentValue;
      while (temp?.next != null) {
        if (temp?.next?.data == currentValue.data) {
          temp?.next = temp.next?.next;
        } else {
          temp = temp?.next;
        }
      }
      currentValue = currentValue.next;
    }
  }

  void reverseList() {
    Node? prev = null;
    Node? temp = head;
    Node? nextTemp;
    while (temp != null) {
      nextTemp = temp.next;
      temp.next = prev;
      prev = temp;
      temp = nextTemp;
    }
    
  }

  void addNode(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
      tail = newNode;
    } else {
      tail?.next = newNode;
      tail = newNode;
    }
  }

  void display() {
    if (head == null) {
      print('empty');
    } else {
      Node? temp = head;
      while (temp != null) {
        print(temp.data);
        temp = temp.next;
      }
    }
  }
}

void main(List<String> args) {
  SLinkedList list = SLinkedList();
  list.addNode(3);
  list.addNode(1);
  list.addNode(1);
  list.addNode(3);
  list.addNode(3);
  list.addNode(4);
  list.addNode(5);
  list.addNode(5);
  list.addNode(7);
  list.addNode(7);
  // print(list.reverseList());
  list.reverseList();
  list.display();
}
