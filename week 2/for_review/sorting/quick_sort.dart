void main(List<String> args) {
  List<int> quickSort(List<int> arr) {
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
  List<int> numbers= [43,65,23,1,765,234,8,712,56];
  print(quickSort(numbers));
}
