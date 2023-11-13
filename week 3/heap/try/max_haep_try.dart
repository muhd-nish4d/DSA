class MaxHeap {
  List<int> heap = [];
  MaxHeap();
  MaxHeap.listed(List<int> list) {
    buildHeap(list);
  }

  void buildHeap(List<int> list) {
    heap = list;
    for (var i = parent(list.length - 1); i >= 0; i--) {
      shiftDown(i);
    }
  }

  void shiftDown(int currentIdx) {
    int endIdx = heap.length - 1;
    int leftIdx = leftChild(currentIdx);
    while (leftIdx <= endIdx) {
      int rightIdx = rightChild(currentIdx);
      int idxToShift;
      if (rightIdx <= endIdx && heap[rightIdx] > heap[leftIdx]) {
        idxToShift = rightIdx;
      } else {
        idxToShift = leftIdx;
      }
      if (heap[currentIdx] < heap[idxToShift]) {
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

  void sort() {
    for (var i = heap.length - 1; i >= 0; i--) {
      int temp = heap[0];
      heap[0] = heap[i];
      heap[i] = temp;
      shiftDownForSorting(0, i);
    }
  }

  void shiftDownForSorting(int current, int endIdx) {
    int leftIdx = leftChild(current);

    while (leftIdx < endIdx) {
      int rightIdx = rightChild(current);
      int indexToShift;
      if (rightIdx < endIdx && heap[rightIdx] > heap[leftIdx]) {
        indexToShift = rightIdx;
      } else {
        indexToShift = leftIdx;
      }
      if (heap[current] < heap[indexToShift]) {
        int temp = heap[indexToShift];
        heap[indexToShift] = heap[current];
        heap[current] = temp;
        current = indexToShift;
        leftIdx = leftChild(current);
      } else {
        return;
      }
    }
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
  List<int> list = [4, 3, 2, 5, 1, 6, 76, 43, 12];
  MaxHeap max = MaxHeap.listed(list);
  max.sort();
  max.display();
}
