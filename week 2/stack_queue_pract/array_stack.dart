import 'dart:io';

class Stack {
  List<int> items = [];

  push(int elemnt) {
    this.items.add(elemnt);
  }

  pop() {
    this.items.removeLast();
  }

  print(){
    stdout.write(this.items);
  }
}
void main(List<String> args) {
  Stack stack = Stack();
  stack.push(3);
  stack.push(23);
  stack.push(36);
  stack.push(63);
  stack.pop();
  stack.print();
}
