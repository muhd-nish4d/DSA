void main(List<String> args) {
  List<int> arr1 = [1, 2, 3, 4, 4];
  List<int> arr2 = [3, 5];
  List<int> mergedArray = [];
  List<int> arr3 = [];
  List<int> arr4 = [];
  int k = 0;
  for (var i = 0; i < arr1.length + arr2.length; i++) {
    if (i < arr1.length) {
      mergedArray.add(arr1[i]);
    } else {
      mergedArray.add(arr2[k]);
      k++;
    }
  }
  for (var i = 0; i < mergedArray.length; i++) {
    bool isDuplicate = false;
    for (var j = 0; j < mergedArray.length; j++) {
      if (mergedArray[i] == mergedArray[j] && i != j) {
        isDuplicate = true;
      }
    }
    if (!isDuplicate) {
      if (i < arr1.length) {
        arr3.add(mergedArray[i]);
      } else {
        arr4.add(mergedArray[i]);
      }
    }
  }
  print(arr3);
  print(arr4);
}
