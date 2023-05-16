void main() {
  List<int> array = [1, 3, 5, 7, 9];
  Binary binary = Binary();
  print(binary.binary(array, 9));
}

class Binary {
  int binary(List<dynamic> array, int target) {
    int start = 0;
    int end = array.length - 1;
    while (start <= end) {
      int middle = ((start + end) / 2).floor();
      if (array[middle] == target) {
        return middle;
      } else if (array[middle] < target) {
        start = middle + 1;
      } else {
        end = middle - 1;
      }
    }
    return -1;
  }
}
