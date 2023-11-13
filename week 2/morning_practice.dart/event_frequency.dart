void main(List<String> args) {
  List<int> arr = [1,23,4,5];
  int current = 0;
  int numb = 0;
  int num = 0;
  int count = 0;
  
  for (var i = 0; i < arr.length; i++) {
    if (arr[i].isEven) {
      current = arr[i];
      count = 0;
    } else if (i == arr.length - 1 && numb == 0) {
      print('No Value their');
    } else {
      continue;
    }
    for (var element in arr) {
      if (element == arr[i]) {
        count++;
      }
    }
    if (count > num) {
      num = count;
      numb = current;
    } else if (count == num && numb > current) {
      numb = current;
    } else {
      continue;
    }
  }
  print(numb);
}
