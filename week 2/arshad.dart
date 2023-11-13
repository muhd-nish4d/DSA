void main() {
  List<String> arr = ['5', '2', 'a', 'd', '+'];
  List<int> result = [];
  for (var element in arr) {
    if (int.tryParse(element) != null) {
      result.add(int.parse(element));
    }else if(element == 'a'){
      result.removeLast();
    }else if(element == 'd'){
      int sum = result[0] * 2;
      result.add(sum);
    }else if(element == '+'){
      int sum = result[0]+result[1];
      result.add(sum);
    }else{
      return;
    }
  }
  print(result);
}
