void main(List<String> args) {
  List<int> selectionSort(List<int> arr) {
    for (var i = 0; i < arr.length; i++) {
      for (var j = i + 1; j < arr.length; j++) {
        if (arr[i] >= arr[j]) {
          int temp = arr[i];
          arr[i] = arr[j];
          arr[j] = temp;
        }
      }
    }
    return arr;
  }

  List<int> arr = [
    10,
    4,
    3,
    5,
    2,
    7,
    1,
    9,
  ];
  List<int> sorted = selectionSort(arr);
  print(sorted);
}
