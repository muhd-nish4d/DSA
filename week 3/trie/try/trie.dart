import 'dart:collection';

class TrieNode {
  Map<String, TrieNode?> children = HashMap();
}

class Trie {
  TrieNode root = TrieNode();
  String endSymbol = '*';

  void insert(String str) {
    populateSuffixTrie(str);
  }

  void populateSuffixTrie(String str) {
    for (var i = 0; i < str.length; i++) {
      insertSubstringStartingAt(i, str);
    }
  }

  void insertSubstringStartingAt(int idx, String str) {
    TrieNode node = root;
    for (var i = idx; i < str.length; i++) {
      String ltr = str[i];
      if (!node.children.containsKey(ltr)) {
        TrieNode newNode = TrieNode();
        node.children.addAll({ltr: newNode});
      }
      node = node.children[ltr]!;
    }
    node.children.addAll({endSymbol: null});
  }

  bool contain(String str) {
    TrieNode node = root;
    for (var i = 0; i < str.length; i++) {
      String ltr = str[i];
      if (!node.children.containsKey(ltr)) {
        return false;
      }
      node = node.children[ltr]!;
    }
    return node.children.containsKey(endSymbol);
  }

}

void main(List<String> args) {
  Trie trie = Trie();
  trie.insert('samyukth');
  print(trie.contain('s'));
}
