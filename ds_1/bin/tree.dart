void main() {
  Binary tree = Binary();
  tree.insert(10);
  tree.insert(8);
  tree.insert(11);
  tree.insert(4);
  tree.insert(9);
  tree.inorder();
  print('');
  tree.preorder();
  print('');
  tree.postorder();
  // tree.delete(20);
  //print(tree.contains());
}

class Node {
  int data;
  Node? left;
  Node? right;
  Node(this.data);
}

class Binary {
  Node? root;
  void insert(int data) {
    Node? current = root;
    if (root == null) {
      root = Node(data);
      return;
    }
    while (true) {
      if (data < current!.data) {
        if (current.left == null) {
          current.left = Node(data);
          break;
        } else {
          current = current.left;
        }
      } else {
        if (current.right == null) {
          current.right = Node(data);
          return;
        } else {
          current = current.right;
        }
      }
    }
  }

  bool contains(int data) {
    Node? current = root;
    while (current != null) {
      if (data < current.data) {
        current = current.left;
      } else {
        if (data > current.data) {
          current = current.right;
        } else {
          return true;
        }
      }
    }
    return false;
  }

  void delete(int data) {
    root = _deleteNode(root, data);
  }

  Node? _deleteNode(Node? root, int data) {
    if (root == null) {
      return null;
    }
    if (data < root.data) {
      root.left = _deleteNode(root.left, data);
    } else if (data > root.data) {
      root.right = _deleteNode(root.right, data);
    } else {
      // Found the node to delete
      if (root.left == null && root.right == null) {
        // Case 1: Node has no children
        return null;
      } else if (root.left == null) {
        // Case 2: Node has one child (right child)
        return root.right;
      } else if (root.right == null) {
        // Case 2: Node has one child (left child)
        return root.left;
      } else {
        // Case 3: Node has two children
        Node? temp = _findMinNode(root.right);
        root.data = temp!.data;
        root.right = _deleteNode(root.right, temp.data);
      }
    }
    return root;
  }

  Node? _findMinNode(Node? node) {
    while (node != null && node.left != null) {
      node = node.left;
    }
    return node;
  }

  void inorder() {
    _inorder(root!);
  }

  void _inorder(Node? node) {
    if (node != null) {
      _inorder(node.left);
      print(node.data);
      _inorder(node.right);
    }
  }

  void preorder() {
    _preorder(root!);
  }

  void _preorder(Node? node) {
    if (node != null) {
      print(node.data);
      _preorder(node.left);
      _preorder(node.right);
    }
  }

  void postorder() {
    _postorder(root!);
  }

  void _postorder(Node? node) {
    if (node != null) {
      _postorder(node.left);
      _postorder(node.right);
      print(node.data);
    }
  }

//find closest----------------------------------------------
  int closest(int target) {
    Node? temp = root;
    int nearest = temp!.data;
    while (temp != null) {
      if ((target - nearest).abs() > (target - temp.data)) {
        nearest = temp.data;
      }
      if (target < temp.data) {
        temp = temp.left;
      } else if (target > temp.data) {
        temp = temp.right;
      }
    }
    return nearest;
  }

//find min-------------------------------
  void findmin() {
    Node? node = root;
    while (node != null) {
      if (node.left == null) {
        print(node.data);
        break;
      } else {
        node = node.left;
      }
    }
  }

//find max-----------------------------------------
  void findmax() {
    Node? node = root;
    while (node != null) {
      if (node.right == null) {
        print(node.data);
        break;
      } else {
        node = node.right;
      }
    }
  }

//check binary or not--------------------------------------
  bool? isbinary(Node root) {
    Node current = root;
    if (current.left!.data <= current.data &&
        current.right!.data >= current.data) {
      return true;
    } else {
      return false;
    }
  }

  void binary() {
    print(isbinary(root!));
  }
}
