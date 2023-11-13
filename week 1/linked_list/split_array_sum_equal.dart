void main(List<String> args) {
  List<int> arr = [1,2,3,4,2];
  int len = arr.length;
  int sum = 0;
  int splitValue;
  int count = 0;

  for (var i = 0; i < len; i++) {
    sum = sum + arr[i];
  }
  splitValue = sum ~/ 3;
  sum = 0;
  for (var i = 0; i < len; i++) {
    sum = sum + arr[i];
    if (sum < splitValue) {
      continue;
    } else if (sum == splitValue) {
      print(sum);
      sum = 0;
      count++;
      if (i == len - 1 && count == 3) {
        print(true);
        return;
      }
    } else {
      print(false);
      return;
    }
  }
}
