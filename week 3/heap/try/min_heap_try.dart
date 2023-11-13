class MinHeap {
  List<int> heap = [];
  MinHeap();
  MinHeap.listed(List<int> arr) {
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
      int idxToShift;
      if (rightIdx <= endIdx && heap[rightIdx] < heap[leftIdx]) {
        idxToShift = rightIdx;
      } else {
        idxToShift = leftIdx;
      }
      if (heap[currentIdx] > heap[idxToShift]) {
        int temp = heap[currentIdx];
        heap[currentIdx] = heap[idxToShift];
        heap[idxToShift] = temp;
        currentIdx = idxToShift;
        leftIdx = leftChild(currentIdx);
      } else {
        return;
      }
    }
  }

  void shiftUp(int currentIdx) {
    int parentIdx = parent(currentIdx);
    while (currentIdx > 0 && heap[currentIdx] < heap[parentIdx]) {
      int temp = heap[currentIdx];
      heap[currentIdx] = heap[parentIdx];
      heap[parentIdx] = temp;
      currentIdx = parentIdx;
      parentIdx = parent(currentIdx);
    }
  }

  void insert(int data) {
    heap.add(data);
    shiftUp(heap.length - 1);
  }

  void remove(){
    heap[0] = heap[heap.length - 1];
    heap.removeLast();
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
  List<int> arr = [6, 7, 3, 9];
  MinHeap min = MinHeap.listed(arr);
  min.insert(1);
  min.remove();
  min.display();
}
