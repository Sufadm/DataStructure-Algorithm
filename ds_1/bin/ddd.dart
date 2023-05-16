void main() {
  List stack = [1, 2, 3, 4, 5];
  int middleIndex = (stack.length / 2).floor();

  print("Before removing middle element: $stack");

  stack.removeAt(middleIndex);

  print("After removing middle element: $stack");
}
