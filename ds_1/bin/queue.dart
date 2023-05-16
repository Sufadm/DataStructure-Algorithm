void main() {
  Queue list = Queue();
  list.enqueue(10);
  list.enqueue(20);
  list.enqueue(30);
  list.enqueue(40);
  list.dequeue();
  list.display();
}

class Node {
  int? data;
  Node? next;
  Node(int this.data);
}

class Queue {
  Node? front;
  Node? rear;

  void enqueue(int data) {
    Node newnode = Node(data);
    if (rear == null) {
      front = rear = newnode;
      return;
    }
    rear?.next = newnode;
    rear = newnode;
  }

  void display() {
    Node? current = front;
    if (front == null) {
      print('empty');
      return;
    }
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  void dequeue() {
    if (front == null) {
      print('empty');
    }
    front = front?.next;
    if (front == null) {
      rear = null;
    }
  }
}
