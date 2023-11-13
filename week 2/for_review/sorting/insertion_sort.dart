void main(List<String> args) {
  void insertionSort(List<int> arr) {
    for (var i = 0; i < arr.length; i++) {
      int current = arr[i];
      int j = i - 1;
      while (j >= 0 && arr[j] > current) {
        arr[j + 1] = arr[j];
        j--;
      }
      arr[j + 1] = current;
    }
    print(arr);
  }
  List<int> numbers = [554,23,1,65,23,87,2,54];
  insertionSort(numbers);
}
