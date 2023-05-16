
void main(List<String> args) {
  TrieOperation tr = TrieOperation('sufad');
  print(tr.contains('sufad'));
}

class Trie {
  Map<String, Trie?> children = {};
}

class TrieOperation {
  Trie root = Trie();
  String endSymbol = '*';
  TrieOperation(String str) {
    populateSuffix(str);
  }
  void populateSuffix(String str) {
    for (int i = 0; i < str.length; i++) {
      insertSibstring(i, str);
    }
  }

  void insertSibstring(int index, String str) {
    Trie node = root;
    for (int i = index; i < str.length; i++) {
      String letter = str[i];
      if (!node.children.containsKey(letter)) {
        Trie newNode = Trie();
        node.children[letter] = newNode;
      }
      node = node.children[letter]!;
    }
    node.children[endSymbol] = null;
  }

  bool contains(String str) {
    Trie node = root;
    for (int i = 0; i < str.length; i++) {
      String letter = str[i];
      if (!node.children.containsKey(letter)) {
        return false;
      }
      node = node.children[letter]!;
    }
    return node.children.containsKey(endSymbol);
  }
}
