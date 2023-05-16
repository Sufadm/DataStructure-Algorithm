void insertionSort(List<int> arr) {
  int n = arr.length;

  for (int i = 1; i < n; i++) {
    int current = arr[i];
    int j = i - 1;

    while (j >= 0 && arr[j] > current) {
      arr[j + 1] = arr[j];
      j--;
    }

    arr[j + 1] = current;
  }
}

void main() {
  List<int> arr = [5, 7, 2, 45, 11, 24, 5];
  insertionSort(arr);
  print(arr);
}
