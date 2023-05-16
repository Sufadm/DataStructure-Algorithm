void main() {
  Dlinkedlist list = Dlinkedlist();
  list.addnode(10);
  list.addnode(10);
  list.addnode(10);
  list.addnode(20);
  list.addnode(20);
  list.insertBefore(30, 35);
  list.displayprev();
}

class Node {
  int? data;
  Node? prev;
  Node? next;

  Node(int this.data);
}

class Dlinkedlist {
  Node? head;
  Node? tail;

  void addnode(int data) {
    Node newnode = Node(data);
    if (head == null) {
      head = newnode;
    } else {
      tail?.next = newnode;
      newnode.prev = tail;
    }
    tail = newnode;
  }

  void display() {
    if (head == null) {
      print('Head is Emptyy');
    } else {
      Node? temp = head;
      while (temp != null) {
        print(temp.data);
        temp = temp.next;
      }
    }
  }

  void displayprev() {
    Node? temp = tail;
    while (temp != null) {
      print(temp.data);
      temp = temp.prev;
    }
  }

  void delete(int data) {
    Node? temp = head;
    while (temp != null && temp.data != data) {
      temp = temp.next;
    }
    if (temp == null) {
      return;
    }
    if (temp == head) {
      head = temp.next;
    } else {
      temp.prev?.next = temp.next;
    }
    if (temp == tail) {
      tail = temp.prev;
    } else {
      temp.next?.prev = temp.prev;
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

    newNode.next = temp.next;
    newNode.prev = temp;
    temp.next = newNode;

    if (newNode.next != null) {
      newNode.next?.prev = newNode;
    } else {
      tail = newNode;
    }
  }

  void insertBefore(int nextTo, int data) {
    Node newNode = Node(data);
    Node? temp = head;
    while (temp != null && temp.data != nextTo) {
      temp = temp.next;
    }

    if (temp == null) {
      return;
    }

    newNode.next = temp;
    newNode.prev = temp.prev;

    if (temp.prev != null) {
      temp.prev?.next = newNode;
    } else {
      head = newNode;
    }
    temp.prev = newNode;
  }
}
