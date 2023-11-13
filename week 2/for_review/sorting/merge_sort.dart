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
  List<int> result = [];
  int i = 0;
  int j = 0;
  while (i < leftArray.length && j < rightArray.length) {
    if (leftArray[i] < rightArray[j]) {
      result.add(leftArray[i]);
      i++;
    } else {
      result.add(rightArray[j]);
      j++;
    }
  }
  result.addAll(leftArray.sublist(i));
  result.addAll(rightArray.sublist(j));
  return result;
}

void main(List<String> args) {
  List<int> numbers = [354,2,12,65,7,34,122,652,1232,1];
  print(mergeSort(numbers));
}
