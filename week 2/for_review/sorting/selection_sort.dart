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
  List<int> numbers = [56,23,87,1,56,2,76,435];
  selectionSort(numbers);
}
