void main() {
  int binarySearch(List<int> arr, int target, [int start = 0, int? end]) {
    end ??= arr.length;
    if (end >= start) {
      int mid = (start + end) ~/ 2;
      if (arr[mid] == target) {
        return mid;
      } else if (arr[mid] < target) {
        return binarySearch(arr, target, mid + 1, end);
      } else {
        return binarySearch(arr, target, start, mid - 1);
      }
    }
    return -1;
  }

  List<int> arr = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  print(binarySearch(arr, 5));
}
