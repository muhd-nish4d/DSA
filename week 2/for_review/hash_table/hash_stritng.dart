class Hash {
  int size;
  List<dynamic> hashTable = [];
  Hash(this.size) {
    hashTable = List.filled(size, null);
  }

  int findIndex(String str) {
    int asccii = 0;
    for (var i = 0; i < str.length; i++) {
      int a = str.codeUnitAt(i);
      asccii = a + asccii;
    }
    int result = asccii % hashTable.length;
    return result;
  }

  void insertValue(String str){
    int index = findIndex(str);
    hashTable[index] = str;
  }

  void desplayHashTable(){
    for (var i = 0; i < hashTable.length; i++) {
      print(hashTable[i]);
    }
  }

  void deleteHash(String str){
    int index = findIndex(str);
    hashTable[index] = null;
  }
}
void main(List<String> args) {
  Hash hash = Hash(3);
  hash.insertValue('hi');
  hash.insertValue('nishad');
  hash.insertValue('str');
  hash.deleteHash('nishad');
  hash.desplayHashTable();
}
