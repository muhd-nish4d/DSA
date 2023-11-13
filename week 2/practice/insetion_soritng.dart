void main(List<String> args) {
  void insertionSort(List<int> arr) {
    for (var i = 0; i < arr.length; i++) {
      int current = arr[i];
      int j = i - 1;
      while (j>=0 && arr[j] > current) {
        arr[j+1] = arr[j];
        j--;
      }
      arr[j+1] = current;
    }
    print(arr);
  }

  List<int> list = [90, 65, 43, 6, 98, 12, 54, 21, 1, 4];
  insertionSort(list);
}
