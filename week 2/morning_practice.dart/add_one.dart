void main(List<String> args) {
  List<int> arr = [9, 9, 9, 9, 9, 9];
  List<int> result = [];
  for (var i = arr.length - 1; i >= 0; i--) {
    if (i == 0 && arr[i] == 9) {
      for (var j = 0; j < arr.length; j++) {
        if (j == 0) {
          result.add(1);
          result.add(0);
        } else {
          result.add(arr[j]);
        }
      }
      print(result);
    } else if (arr[i] < 9) {
      arr[i] = arr[i] + 1;
      print(arr);
      break;
    } else {
      arr[i] = 0;
    }
  }
}
