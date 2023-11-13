import 'dart:io';

class Hash {
  int size;

  List<dynamic> hashTable = [];

  Hash(this.size) {
    hashTable = List.filled(size, null);
  }

  hashFunction(key) {
    return key % this.size;
  }

  insertItem(key) {
    int index = this.hashFunction(key);
    int flag = 0;
    while (flag == 0) {
      if (hashTable[index] == null) {
        hashTable[index] = key;
        flag = 1;
        break;
      } else {
        index = this.hashFunction(index + 1);
      }
    }
  }

  displayHash() {
    for (int i = 0; i < hashTable.length; i++) {
      stdout.write('index $i ');
      if (hashTable[i] == null) {
        print('null ');
      } else {
        print('${hashTable[i]}');
      }
    }
  }
}

void main() {
  var a = [10, 10, 20, 50, 60, 70];
  Hash hash = Hash(6);

  for (var i in a) {
    hash.insertItem(i);
  }
  hash.displayHash();
}
