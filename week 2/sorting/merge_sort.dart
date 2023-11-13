List<int> mergeSorting(List<int> numbers) {
  if (numbers.length <= 1) {
    return numbers;
  }
  int mid = (numbers.length / 2).floor();
  final left = numbers.sublist(0, mid);
  final right = numbers.sublist(mid);

  return merge(mergeSorting(left), mergeSorting(right));
}

List<int> merge(List<int> left, List<int> right) {
  List<int> result = [];
  int leftIndex = 0;
  int rightIndex = 0;
  while (leftIndex < left.length && rightIndex < right.length) {
    if (left[leftIndex] < right[rightIndex]) {
      result.add(left[leftIndex]);
      leftIndex++;
    } else {
      result.add(right[rightIndex]);
      rightIndex++;
    }
  }
  result.addAll(left.sublist(leftIndex));
  result.addAll(right.sublist(rightIndex));
  return result;
}

void main(List<String> args) {
  final unsortedList = [3, 7, 1, 9, 2, 6, 0, 4];
  print(mergeSorting(unsortedList));
}
