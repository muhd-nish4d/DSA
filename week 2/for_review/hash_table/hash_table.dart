class Hash {
  int size;
  List<dynamic> hashTable = [];
  Hash(this.size) {
    hashTable = List.filled(size, null);
  }

  createHashCode(key) {
    return key % this.size;
  }

  void insertValue(int data) {
    int index = createHashCode(data);
    int flag = 0;
    while (flag == 0) {
      if (hashTable[index] == null) {
        hashTable[index] = data;
        flag = 1;
        break;
      }else{
        index = this.createHashCode(index + 1);
      }
    }
  }

  void displayHashTable(){
    for (var i = 0; i < hashTable.length; i++) {
      print(hashTable[i]);
    }
  }
}

void main(List<String> args) {
  Hash hash =Hash(4);
  hash.insertValue(5);
  hash.insertValue(3);
  hash.insertValue(3);
  hash.insertValue(8);
  hash.displayHashTable();
}
