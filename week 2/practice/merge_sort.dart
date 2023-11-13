List<int> mergeSort(List<int> arr) {
  if (arr.length <= 1) {
    return arr;
  }
  int mid = arr.length ~/ 2;
  List<int> leftArray = arr.sublist(0, mid);
  List<int> rightArray = arr.sublist(mid);
  return merge(mergeSort(leftArray), mergeSort(rightArray));
}

List<int> merge(List<int> leftArray, List<int> rightArray) {
  List<int> newList = [];
  int leftIdx = 0;
  int rightIdx = 0;
  while (leftIdx < leftArray.length && rightIdx < rightArray.length) {
    if (leftArray[leftIdx] < rightArray[rightIdx]) {
      newList.add(leftArray[leftIdx]);
      leftIdx++;
    } else {
      newList.add(rightArray[rightIdx]);
      rightIdx++;
    }
  }
  newList.addAll(leftArray.sublist(leftIdx));
  newList.addAll(rightArray.sublist(rightIdx));
  return newList;
}

void main(List<String> args) {
  List<int> newList = [54, 23, 12, 765, 31, 1, 7564, 2];
  print(mergeSort(newList));
}
