void main(List<String> args) {
  void bubbleSort(List<int> arr) {
    for (var i = 0; i < arr.length; i++) {
      for (var j = 0; j < arr.length - i - 1; j++) {
        if (arr[j] > arr[j+1]) {
          var temp = arr[j];
          arr[j] = arr[j+1];
          arr[j+1] = temp;
        }
      }
    }
    print(arr);
  }

  List<int> list = [76, 45, 23, 98, 12, 54, 1, 86, 234];
  bubbleSort(list);
}
