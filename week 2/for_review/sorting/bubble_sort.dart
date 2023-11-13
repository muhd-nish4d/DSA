void main(List<String> args) {
  void bubbleSort(List<int> arr) {
    for (var i = 0; i < arr.length; i++) {
      for (var j = 0; j < arr.length - i - 1; j++) {
        if (arr[j] > arr[j + 1]) {
          var temp = arr[j];
          arr[j] = arr[j + 1];
          arr[j + 1] = temp;
        }
      }
    }
    print(arr);
  }
  List<int> numbers = [34,75,12,87,2,98,1,56,23,875];
  bubbleSort(numbers);
}
