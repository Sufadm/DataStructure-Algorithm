void main() {
  List<int> array = [13, 56, 4, 32, 211, 34, 7];
  print(bubble(array));
}

List<int> bubble(List<int> array) {
  for (int i = 0; i < array.length - 1; i++) {
    for (int j = 0; j < array.length - 1; j++) {
      if (array[j] > array[j + 1]) {
        int temp = array[j];
        array[j] = array[j + 1];
        array[j + 1] = temp;
      }
    }
  }
  return array;
}
