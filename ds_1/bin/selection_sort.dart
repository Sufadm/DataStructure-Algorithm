void main() {
  List<int> array = [1, 5, 7, 43, 2, 6, 7, 83, 2, 1, 13];
  print(selection(array));
}

List<int> selection(List<int> array) {
  for (int i = 0; i < array.length - 1; i++) {
    int smallest = i;
    for (int j = i + 1; j < array.length; j++) {
      if (array[j] < array[smallest]) {
        smallest = j;
      }
    }
    int temp = array[smallest];
    array[smallest] = array[i];
    array[i] = temp;
  }
  return array;
}
