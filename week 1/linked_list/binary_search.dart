void main(List<String> args) {
  int binarySearch(List<int> arr, int valueForSearch) {
    int left = 0;
    int ringht = arr.length - 1;
    while (left <= ringht) {
      int mid = (left + ringht) ~/ 2;
      if (arr[mid] == valueForSearch) {
        return mid;
      } else if (arr[mid] < valueForSearch) {
        left = mid + 1;
      } else {
        ringht = mid - 1;
      }
    }
    return -1;
  }

  int linearSearch(List<int> arr, int target) {
    for (var i = 0; i < arr.length; i++) {
      if (arr[i] == target) {
        return i;
      }
    }
    return -1;
  }

  List<int> arr = [0,1,2,3,4,5,6,7,8,9];
  // int post = binarySearch(arr, 10);
  int post = linearSearch(arr, 3);
  print(post);
}
