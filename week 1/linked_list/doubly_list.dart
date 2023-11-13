class Node {
  int value;
  Node? prev;
  Node? next;
  Node(this.value);
}

class DLinkedListed {
  Node? head;
  Node? tail;

  void addNodeToDLink(int data) {
    Node newValue = Node(data);
    if (head == null) {
      head = newValue;
    } else {
      tail?.next = newValue;
      newValue.prev = tail;
    }
    tail = newValue;
  }

  void addAfter(int toNext, int data) {
    Node? newValue = Node(data);
    Node? temp = head;
    while (temp != null) {
      if (temp.value == toNext) {
        newValue.next = temp.next;
        temp.next?.prev = newValue;
        newValue.prev = temp;
        temp.next = newValue;
        if (temp == tail && temp.value == toNext) {
          tail = newValue;
        }
      }
      temp = temp.next;
    }
  }

  void beforeAdd(int toPrev, int data) {
    Node? newValue = Node(data);
    Node? temp = head;
    if (temp?.value == toPrev) {
      head = newValue;
      newValue.next = temp;
      temp?.prev = head;
      return;
    }
    while (temp != null) {
      if (temp.value == toPrev) {
        newValue.prev = temp.prev;
        temp.prev?.next = newValue;
        newValue.next = temp;
        temp.prev = newValue;
      }
      temp = temp.next;
    }
  }

  void addFirst(int data) {
    Node? newValue = Node(data);
    Node? temp = head;
    if (head != null) {
      temp?.prev = newValue;
      newValue.next = temp;
      head = newValue;
    }
  }

  void delete(int data) {
    Node? temp = head;
    if (temp?.value == data) {
      head = temp?.next;
      temp?.next?.prev = null;
    }
    if (tail?.value == data) {
      tail = tail?.prev;
      tail?.next = null;
    }
    while (temp != null && temp.value != data) {
      temp = temp.next;
    }
    temp?.prev?.next = temp.next;
    temp?.next?.prev = temp.prev;
  }

  // void deleteDuplicate() {
  //   Node? currenValue = head;
  //   while (currenValue != null) {
  //     Node? temp = currenValue.next;

  //     while (temp != null) {
  //       if (temp.value == currenValue.value) {
  //         temp.prev?.next = temp.next;

  //         if (temp.next != null) {
  //           temp.next?.prev = temp.prev;
  //         }
  //       } else {
  //         temp = temp.next;
  //       }
  //     }
  //     currenValue = currenValue.next;
  //   }
  // }
  void removeDuplicates() {
    if (head == null) {
      return;
    }

    Node? current = head;

    while (current != null) {
      Node? temp = current.next;

      while (temp != null) {
        if (temp.value == current.value) {
          temp.prev?.next = temp.next;

          if (temp.next != null) {
            temp.next?.prev = temp.prev;
          }
        } else {
          temp = temp.next;
        }
      }

      current = current.next;
    }
  }

  void displayNode() {
    Node? temp = head;
    if (head == null) {
      return print('Its empty');
    }
    while (temp != null) {
      print(temp.value);
      temp = temp.next;
    }
  }
}

void main(List<String> args) {
  DLinkedListed list = DLinkedListed();

  list.addNodeToDLink(20);
  list.addNodeToDLink(30);
  list.addNodeToDLink(70);
  list.addNodeToDLink(20);
  list.addNodeToDLink(80);
  list.addNodeToDLink(90);
  list.removeDuplicates();

  print(list.tail?.value);
  list.displayNode();
}
