void main(List<String> args) {
  List<int> arr = [1, 2, 4, 5, 6, 6];
  List<int> uniqueArray = [];
  for (var i = 0; i < arr.length; i++) {
    bool isUnique = false;
    for (var j = i + 1; j < arr.length; j++) {
      if (arr[i] == arr[j]) {
        isUnique = true;
        break;
      }
    }
    if (!isUnique) {
      uniqueArray.add(arr[i]);
    }
  }
  print(uniqueArray);
  List<int> numbers = [1, 2, 3, 1, 2, 4, 5, 3];
  List<int> uniqueNumbers = [];

  for (int i = 0; i < numbers.length; i++) {
    bool isDuplicate = false;
    for (int j = i + 1; j < numbers.length; j++) {
      if (numbers[i] == numbers[j]) {
        isDuplicate = true;
        break;
      }
    }
    if (!isDuplicate) {
      uniqueNumbers.add(numbers[i]);
    }
  }

  // print(uniqueNumbers); // [1, 2, 3, 4, 5]
}
