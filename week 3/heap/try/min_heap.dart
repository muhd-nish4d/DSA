class MinHeap {
  List<int> heap = [];
  MinHeap();
  MinHeap.Listed(List<int> array) {
    buildHeap(array);
  }

  void buildHeap(List<int> arr) {
    heap = arr;
    for (var i = parent(arr.length - 1); i >= 0; i--) {
      shiftdown(i);
    }
  }

  void shiftdown(int currentIdx) {
    int endindex = heap.length - 1;
    int lChild = leftChild(currentIdx);

    while (lChild <= endindex) {
      int rChild = rightChild(currentIdx);
      int indexToShift;

      //first we search which number want to change.
      //then we take smallest value from there
      if (rChild <= endindex && heap[rChild] < heap[lChild]) {
        indexToShift = rChild;
      } else {
        indexToShift = lChild;
      }
      //then we compare to parents
      if (heap[indexToShift] < heap[currentIdx]) {
        final temp = heap[currentIdx];
        heap[currentIdx] = heap[indexToShift];
        heap[indexToShift] = temp;
        currentIdx = indexToShift;
        lChild = leftChild(indexToShift);
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

  void shiftup(int currentIdx) {
    int parentIdx = parent(currentIdx);
    while (currentIdx > 0 && heap[currentIdx] < heap[parentIdx]) {
      int temp = heap[parentIdx];
      heap[parentIdx] = heap[currentIdx];
      heap[currentIdx] = temp;
      currentIdx = parentIdx;
      parentIdx = parent(currentIdx);
    }
  }

  int parent(int idx) {
    return (idx - 1) ~/ 2;
  }

  int leftChild(int idx) {
    return (2 * idx) + 1;
  }

  int rightChild(int idx) {
    return (2 * idx) + 2;
  }

  void display() {
    for (var i = 0; i < heap.length; i++) {
      print(heap[i]);
    }
  }
}

void main(List<String> args) {
  List<int> array = [6, 3, 8, 2, 7, 19];
  MinHeap heap = MinHeap.Listed(array);
  // heap.insert(2);
  // heap.insert(6);
  // heap.insert(8);
  heap.display();
}
