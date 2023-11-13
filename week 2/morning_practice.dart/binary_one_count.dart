void main(List<String> args) {
  List<int> arr = [1, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1];
  int count = 0;
  int most = 0;
  for (var i = 0; i < arr.length; i++) {
    if (arr[i] == 1) {
      count++;
    } else {
      count = 0;
    }
    if (count > most) {
      most = count;
    }
  }
  print(most);
}
