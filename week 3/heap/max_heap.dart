class MaxHeap {
  List<int> heap = [];
  MaxHeap();
  MaxHeap.listed(List<int> arr) {
    buildHeap(arr);
  }

  void buildHeap(List<int> arr) {
    heap = arr;
    for (var i = parent(arr.length - 1); i >= 0; i--) {
      shiftDown(i);
    }
  }

  void shiftDown(int currentIdx) {
    int endIdx = heap.length - 1;
    int leftIdx = leftChild(currentIdx);
    while (leftIdx <= endIdx) {
      int rightIdx = rightChild(currentIdx);
      int indexToShift;
      if (rightIdx <= endIdx && heap[rightIdx] > heap[leftIdx]) {
        indexToShift = rightIdx;
      } else {
        indexToShift = leftIdx;
      }
      if (heap[indexToShift] > heap[currentIdx]) {
        int temp = heap[currentIdx];
        heap[currentIdx] = heap[indexToShift];
        heap[indexToShift] = temp;
        currentIdx = indexToShift;
        leftIdx = leftChild(currentIdx);
      } else {
        return;
      }
    }
  }

  void shiftUp(int currentIdx) {
    int parentIdx = parent(currentIdx);
    while (currentIdx > 0 && heap[parentIdx] < heap[currentIdx]) {
      int temp = heap[parentIdx];
      heap[parentIdx] = heap[currentIdx];
      heap[currentIdx] = temp;
      currentIdx = parentIdx;
      parentIdx = parent(currentIdx);
    }
  }

  void insert(int value) {
    heap.add(value);
    shiftUp(heap.length - 1);
  }

  void remove() {
    heap[0] = heap[heap.length - 1];
    heap.removeAt(heap.length - 1);
    shiftDown(0);
  }

  int parent(int idx) {
    return (idx - 1) ~/ 2;
  }

  int leftChild(int idx) {
    return (idx * 2) + 1;
  }

  int rightChild(int idx) {
    return (idx * 2) + 2;
  }

  void display() {
    for (var i = 0; i < heap.length; i++) {
      print(heap[i]);
    }
  }
}

void main(List<String> args) {
  List<int> arr = [1, 4, 23, 6, 43];
  MaxHeap max = MaxHeap.listed(arr);
  max.insert(65);
  max.remove();
  max.display();
}
