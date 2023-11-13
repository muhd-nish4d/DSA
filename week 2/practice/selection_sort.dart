void main(List<String> args) {
  void selectionSort(List<int> arr) {
    for (var i = 0; i < arr.length - 1; i++) {
      for (var j = i + 1; j < arr.length; j++) {
        if (arr[i] > arr[j]) {
          var temp = arr[i];
          arr[i] = arr[j];
          arr[j] = temp;
        }
      }
    }
    print(arr);
  }

  List<int> list = [6, 55, 43, 67, 23, 23, 98, 1, 12, 34];
  selectionSort(list);
}
