void main(List<String> args) {
  List quickSort(List<int> arr) {
    if (arr.length <= 1) {
      return arr;
    }
    int pivot = arr[0];
    List<int> leftArray = [];
    List<int> rightArray = [];
    for (var i = 1; i < arr.length; i++) {
      if (arr[i] < pivot) {
        leftArray.add(arr[i]);
      } else {
        rightArray.add(arr[i]);
      }
    }
    return [...quickSort(leftArray), pivot, ...quickSort(rightArray)];
  }
  List<int> arr = [8,2,7,1,9,4,10,5];
  print(quickSort(arr));
}
