void main() {
  int temp;
  List<int> array = [2, 3, 4, 5, 6, 7, 8];
  for (int i = 0; i < array.length; i++) {
    for (int j = i + 1; j < array.length; j++) {
      if (array[i] < array[j]) {
        temp = array[i];
        array[i] = array[j];
        array[j] = temp;
      }
    }
  }
  print(array.join(' '));
}
