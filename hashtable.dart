class Hash {
  int size;
  List<dynamic> hashTable = [];
  Hash(this.size) {
    hashTable = List.filled(this.size, null);
  }

  int hashing(int key) {
    return key % this.size;
  }

  void insert(int key) {
    int index = this.hashing(key);
    int flag = 0;
    while (flag == 0) {
      if (hashTable[index] == null) {
        hashTable[index] = key;
        flag = 1;
        break;
      } else {
        index = this.hashing(index + 1);
      }
    }
  }
}
