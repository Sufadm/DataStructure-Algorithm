void main() {}

class Heap {
  List heap = [];
  Heap(List array) {
    buildHeap(array);
  }
  void buildHeap(List array) {
    heap = array;
    for (int i = getParent(heap.length - 1); i >= 0; i--) {
      shiftDown(i);
    }
  }

  void shiftup(int current) {
    int parentidx = getParent(current);
    while (
        current >= 0 && heap.elementAt(parentidx) > heap.elementAt(current)) {
      swap(current, parentidx);
      current = parentidx;
      parentidx = getParent(current);
    }
  }

  void shiftDown(int current) {
    int lastidx = heap.length - 1;
    int leftidx = getLeftChild(current);
    while (leftidx <= lastidx) {
      int rightidx = getRightChild(current);
      int shiftidx = leftidx;
      if (rightidx <= lastidx &&
          heap.elementAt(rightidx) < heap.elementAt(leftidx)) {
        shiftidx = rightidx;
      }
      if (heap.elementAt(shiftidx) < heap.elementAt(current)) {
        swap(shiftidx, current);
        current = shiftidx;
        leftidx = getLeftChild(current);
      }
    }
  }

  void peek() {
    print(heap[0]);
  }

  void remove() {
    swap(0, heap.length - 1);
    heap.removeLast();
    shiftDown(0);
  }

  void insert(int value) {
    heap.add(value);
    shiftup(heap.length - 1);
  }

  int getParent(int i) {
    return (i - 1) ~/ 2;
  }

  int getLeftChild(int i) {
    return (i * 2) + 1;
  }

  int getRightChild(int i) {
    return (i * 2) + 2;
  }

  void display() {
    print(heap);
  }

  void swap(int i, int j) {
    int temp = heap[i];
    heap[i] = heap[j];
    heap[j] = temp;
  }
}
