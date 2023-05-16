// void main() {
//   List<int> array = [1, 2, 3, 4, 5, 6];

//   int n = 6;
//   for (int i = 0; i < n; i++) {
//     if (array[i] == 3) {
//       print(array[i]);
//     }
//   }
// }

// void main() {
//   int count = 0;
//   List array = [1, 2, 3, -1, -2, -5];
//   for (int i = 0; i < 6; i++) {
//     if (array[i] < 0) {
//       count = count + 1;
//     }
//   }
//   print('the count of negative numbers is $count');
// }

void main() {
  int sum = 0;
  List<int> array = [1, 2, 3, 4, 5];
  for (int i = 0; i < array.length; i++) {
    sum += array[i];
  }
  print('The sum of all elements is $sum');
}
