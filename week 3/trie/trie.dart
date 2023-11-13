import 'dart:collection';

class TrieNode {
  Map<String, TrieNode?> children = HashMap();
}

class Trie {
  TrieNode root = TrieNode();
  String endsymbol = "*";

  void insert(String str) {
    populateSuffixTrie(str);
  }

  void populateSuffixTrie(String str) {
    for (int i = 0; i < str.length; i++) {
      insertSubstringStartingAt(i, str);
    }
  }

  void insertSubstringStartingAt(int index, String str) {
    TrieNode node = root;

    for (int i = index; i < str.length; i++) {
      String letter = str[i];
      if (!node.children.containsKey(letter)) {
        TrieNode newNode = TrieNode();
        node.children.addAll({letter: newNode});
      }
      node = node.children[letter]!;
    }
    node.children.addAll({endsymbol: null});
  }

  bool contains(String str) {
    TrieNode? node = root;
    for (int i = 0; i < str.length; i++) {
      String letter = str[i];
      if (!node!.children.containsKey(letter)) {
        return false;
      }
      node = node.children[letter];
    }
    return node!.children.containsKey(endsymbol);
  }
}

void main() {
  Trie trie = Trie();
  trie.insert("cross");
  print(trie.contains("oss"));
}
