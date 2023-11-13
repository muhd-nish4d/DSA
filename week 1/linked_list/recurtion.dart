void main(List<String> args) {
  int binarySearch(List<int> arr, int target, [int start = 0, int? end]) {
    end ??= arr.length - 1;
    if (end >= start) {
      int mid = (start + end) ~/ 2;

      if (arr[mid] == target) {
        return mid;
      }

      if (arr[mid] > target) {
        return binarySearch(arr, target, start, mid - 1);
      } else {
        return binarySearch(arr, target, mid + 1, end);
      }
    }

    return -1;
  }

  int binarySearchRecursion(List<int> arr, int target,
      [int start = 0, int? end]) {
    end ??= arr.length - 1;
    if (end > start) {
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

  // List<int> arr = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  // print(binarySearchRecursion(arr, 8));

  // int f(int n) {
  //   if (n <= 1) {
  //     return 1;
  //   }

  //   f(n - 1);

  //   print(n);

  //   return f(n - 1);
  // }

  // f(5);

  int sum(num){
    if (num == 1) {
      return 1;
    }
    return num + sum(num -1);
  }
  print(sum(5));
}
