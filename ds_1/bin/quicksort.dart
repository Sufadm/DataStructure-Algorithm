// void main() {
//   List<int> list = [7, 2, 1, 8, 6, 3, 5, 4];
//   int high = list.length - 1;
//   int low = 0;
//   List result = quickSort(list, low, high);
//   print(result);
// }

// List quickSort(List<int> list, int low, int high) {
//   if (low < high) {
//     int pi = partition(list, low, high);
//     print("pivot: ${list[pi]} now at index $pi");

//     quickSort(list, low, pi - 1);
//     quickSort(list, pi + 1, high);
//   }
//   return list;
// }

// int partition(List<int> list, low, high) {
//   // Base check
//   if (list.isEmpty) {
//     return 0;
//   }
//   // Take our last element as pivot and counter i one less than low
//   int pivot = list[high];

//   int i = low - 1;
//   for (int j = low; j < high; j++) {
//     // When j is < than pivot element we increment i and swap arr[i] and arr[j]
//     if (list[j] < pivot) {
//       i++;
//       swap(list, i, j);
//     }
//   }
//   swap(list, i + 1, high);
//   return i + 1;
// }
// void swap(List list, int i, int j) {
//   int temp = list[i];
//   list[i] = list[j];
//   list[j] = temp;
// }
void main() {
  List<int> array = [6, 34, 2, 1, 13, 546, 45];
  print(quick(array));
}

List<int> quick(List<int> arr) {
  if (arr.length < 2) {
    return arr;
  }
  int pivot = arr[arr.length - 1];
  List<int> left = [];
  List<int> right = [];
  for (int i = 0; i < arr.length - 1; i++) {
    if (arr[i] < pivot) {
      left.add(arr[i]);
    } else {
      right.add(arr[i]);
    }
  }
  return [...quick(left), pivot, ...quick(right)];
}
