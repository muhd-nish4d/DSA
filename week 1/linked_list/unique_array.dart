void main(List<String> args) {
  List<int> numbers = [1,2,3,4,4,4,5];
  for (var i = 0; i < numbers.length; i++) {
    int count = 0;
    for (var j = 0; j < numbers.length; j++) {
      if (numbers[i] == numbers[j] && i != j) {
        count = 1;
        break;
      }
    }
    if (count == 0) {
      print(numbers[i]);
    }
  }
}
