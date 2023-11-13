class MinHeap {
  List<int> heap = [];

  MinHeap();

  MinHeap.Listed(List<int> list) {
    buildHeap(list);
  }

  void buildHeap(List<int> list) {
    heap = list;
    for (int i = parent(list.length - 1); i >= 0; i--) {
      shiftdown(i);
    }
  }

  void shiftdown(int currentindex) {
    int endindex = heap.length - 1;
    int leftindex = leftchild(currentindex);

    while (leftindex <= endindex) {
      int rightindex = rightchild(currentindex);
      int indexToShift;

      if (rightindex <= endindex && heap[rightindex] < heap[leftindex]) {
        indexToShift = rightindex;
      } else {
        indexToShift = leftindex;
      }
      if (heap[indexToShift] < heap[currentindex]) {
        int temp = heap[currentindex];
        heap[currentindex] = heap[indexToShift];
        heap[indexToShift] = temp;
        currentindex = indexToShift;
        leftindex = leftchild(indexToShift);
      } else {
        return;
      }
    }
  }



  void remove() {
    heap[0] = heap[heap.length - 1];
    heap.removeAt(heap.length - 1);
    shiftdown(0);
  }

  void insert(int data) {
    heap.add(data);
    shiftup(heap.length - 1);
  }

  void shiftup(int currentindex) {
    int parentindex = parent(currentindex);
    while (currentindex > 0 && heap[currentindex] < heap[parentindex]) {
      int temp = heap[currentindex];
      heap[currentindex] = heap[parentindex];
      heap[parentindex] = temp;
      currentindex = parentindex;
      parentindex = parent(currentindex);
    }
  }

  int parent(int i) {
    return (i - 1) ~/ 2;
  }

  int leftchild(int i) {
    return (2 * i) + 1;
  }

  int rightchild(int i) {
    return (2 * i) + 2;
  }

  void display() {
    for (int i = 0; i < heap.length; i++) {
      print(heap[i]);
    }
  }
}

void main(List<String> args) {
  List<int> list = [5, 2, 8, 1, 9];
  MinHeap minHeap = MinHeap.Listed(list);

  minHeap.insert(6);
  // minHeap.insert(5);
  // minHeap.insert(15);
  // minHeap.remove();
  minHeap.display();
}
