void main() {
  Slinkedlist list = Slinkedlist();
  List<int> array = [1, 2, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10];
  for (int i = 0; i < array.length; i++) {
    list.addNode(array[i]);
  }
  list.delete(1);
  list.display();
}

class Node {
  int? data;
  Node? next;
  Node(int this.data);
}

class Slinkedlist {
  Node? head;
  Node? tail;

  void addNode(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      tail?.next = newNode;
    }
    tail = newNode;
  }

  void display() {
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  void delete(int data) {
    Node? temp = head, prev;
    if (head != null && temp?.data == data) {
      head = temp?.next;
      return;
    }
    while (temp != null && temp.data != data) {
      prev = temp;
      temp = temp.next;
    }
    if (temp == null) {
      return;
    }

    if (temp == tail) {
      tail = prev;
      tail?.next = null;
      return;
    }
    prev?.next = temp.next;
  }

  void removeDuplicants() {
    Node? current = head;
    while (current != null) {

      Node? next = current.next;
      while (next != null && next.data == current.data) {
        next = next.next;
      }
      current.next = next;
      if (next == tail && current.data == next?.data) {
        tail = current;
        tail?.next = null;
      }
      current = next;
    }
  }

  void insertAfter(int nextTo, int data) {
    Node newNode = Node(data);
    Node? temp = head;
    while (temp != null && temp.data != nextTo) {
      temp = temp.next;
    }

    if (temp == null) {
      return;
    }

    if (temp == tail) {
      tail?.next = newNode;
      tail = newNode;
      return;
    }

    newNode.next = temp.next;
    temp.next = newNode;
  }
}







// void main() {
//   Slinkedlist s = Slinkedlist();

//   s.addnode(10);
//   s.addnode(10);
//   s.addnode(20);
//   s.addnode(30);
//   s.delete(30);

//   s.removeDuplicants();
//   // s.insertAfter(20, 100);
//   s.display();
// }

// class Node {
//   int? data;
//   Node? next;

//   Node(int this.data);
// }

// class Slinkedlist {
//   Node? head;
//   Node? tail;

//   void addnode(int data) {
//     Node newNode = Node(data);
//     if (head == null) {
//       head = newNode;
//     } else {
//       tail?.next = newNode;
//     }
//     tail = newNode;
//   }

//   void display() {
//     if (head == null) {
//       print('Empty');
//     } else {
//       Node? temp = head;
//       while (temp != null) {
//         print(temp.data);
//         temp = temp.next;
//       }
//     }
//   }

//   void delete(int data) {
//     Node? temp = head, prev;
//     if (temp != null && temp.data == data) {
//       head = temp.next;
//       return;
//     }

//     while (temp != null && temp.data != data) {
//       prev = temp;
//       temp = temp.next;
//     }

//     if (temp == null) {
//       return;
//     }
//     if (temp == tail) {
//       tail = prev;
//       tail?.next = null;
//       return;
//     }

//     prev?.next = temp.next;
//   }

  

//   void removeDuplicants() {
//     Node? current = head;
//     while (current != null) {
//       Node? next = current.next;
//       while (next != null && next.data == current.data) {
//         next = next.next;
//       }
//       current.next = next;
//       if (next == tail && current.data == next?.data) {
//         tail = current;
//         tail?.next = null;
//       }
//       current = next;
//     }
//   }
// }
