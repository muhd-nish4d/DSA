class Hash {
  int size;
  List<dynamic> hashTable = [];
  Hash(this.size) {
    hashTable = List.filled(size, null);
  }

  int findIndex(String str) {
    int ascci = 0;
    for (var i = 0; i < str.length; i++) {
      int a = str.codeUnitAt(i);
      ascci = a + ascci;
    }
    int result = ascci % hashTable.length;
    return result;
  }

  void insertItem(String str) {
    int index = findIndex(str);
    hashTable[index] = str;
  }

  void display() {
    for (var i = 0; i < hashTable.length; i++) {
      print(hashTable[i]);
    }
  }

  void delete(String str) {
    int index = findIndex(str);
    hashTable[index] = null;
  }
}

void main(List<String> args) {
  Hash hash = Hash(3);
  hash.insertItem('nishad');
  hash.insertItem('arshad');
  hash.insertItem('amal alex');
  hash.delete('arshad');
  hash.display();
}
