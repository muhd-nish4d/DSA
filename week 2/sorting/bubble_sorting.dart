void main(List<String> args) {
  void bubbleSorting(List<int> list) {
    for (var i = 0; i < list.length; i++) {
      for (var j = 0; j < list.length - i - 1; j++) {
        if (list[j] > list[j + 1]) {
          var temp = list[j];
          list[j] = list[j+1];
          list[j+1] = temp;
        }
      }
    }
    print(list);
  }
  List<int> newList = [76,54,87,1,98,70,13,21];
  bubbleSorting(newList);
}
