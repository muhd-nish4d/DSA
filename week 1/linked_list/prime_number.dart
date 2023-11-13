void main(List<String> args) {
  List<int> numbers = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20
  ];
  List<int> primeNumbers = [];
  for (var i = 0; i < numbers.length; i++) {
    bool isPrime = false;
    if (numbers[i] < 2) {
      isPrime = true;
    }
    for (var j = 2; j < i; j++) {
      if (numbers[i] % j == 0) {
        isPrime = true;
        break;
      }
    }
    if (!isPrime) {
      primeNumbers.add(numbers[i]);
    }
  }
  print(primeNumbers);
}
