class Hash {
  int size;
  List<dynamic> hashTable = [];
  Hash(this.size) {
    hashTable = List.filled(size, null);
  }

  int hashFunction(key) {
    return key % hashTable.length;
  }

  void insertItem(data) {
    int index = this.hashFunction(data);
    int flag = 0;
    while (flag == 0) {
      if (hashTable[index] == null) {
        hashTable[index] = data;
        flag = 1;
        break;
      } else {
        index = this.hashFunction(index + 1);
      }
    }
  }

  void display(){
    for (var i = 0; i < hashTable.length; i++) {
      print(hashTable[i]);
    }
  }
}

void main(List<String> args) {
  Hash hash = Hash(3);
  hash.insertItem(3);
  hash.insertItem(2);
  hash.insertItem(6);
  hash.display();
}