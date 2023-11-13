void main(List<String> args) {
  void insertion(List<int> arr) {
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

  List<int> arr = [4, 5, 3, 6, 2, 7, 1];
  insertion(arr);
}
