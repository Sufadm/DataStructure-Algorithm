// void main(List<String> arguments) {
//   List<int> a = [6, 5, 4, 3, 9, 8, 0];
//   List<int> b = [];
//   for (int i = 0; i < a.length - 1; i++) {
//     for (int j = i + 1; j < a.length; j++) {
//       if (a[i] + a[j] == 10) {
//         b.add(a[i]);
//         b.add(a[j]);
//       }
//     }
//     return print(b);
//   }
// }
//!-----------------------------------------------------------------
// void main() {
//   List<int> numbers = [5, 4, 1];
//   int sum = sums(numbers);
//   print('$sum');
// }

// //new function----------------------------------------------
// int sums(List<int> nums) {
//   int sum = 0;
//   for (int i = 0; i < nums.length; i++) {
//     sum = sum + nums[i];
//   }
//   return sum;
// }
//!=====================================================================
// void main() {
//   List<int> numbers = [6, 5, 4, 3, 9, 8, 0];
//   List<int> result = sums(numbers);
//   print(result);
// }
// sums(List<int> nums) {
//   for (int i = 0; i < nums.length; i++) {
//     for (int j = i + 1; j < nums.length; j++) {
//       if (nums[i] + nums[j] == 10) {
//         return [nums[i], nums[j]];
//       }
//     }
//   }
// }
//!one method to return 2 array value-------------------------
// void main() {
//   List<int> numbers = [1, 2, 3, 4, 5, 6, 7];
//   List<int> result = sums(numbers);
//   print(result);
// }

// sums(List<int> nums) {
//   for (int i = 0; i < nums.length; i++) {
//     for (int j = i + 1; j < nums.length; j++) {
//       if (nums[i] + nums[j] == 10) {
//         return [nums[i], nums[j]];
//       }
//     }
//   }
// }
//!another type---------------------------------complexity method
void main() {
  List<int> numbers = [6, 5, 4, 3, 9, 8, 0];
  List<int> result = sums(numbers);
  print(result.join('\n'));
}

sums(List<int> nums) {
  Set<int> mySet = {};
  for (int i = 0; i < nums.length; i++) {
    int num = nums[i];
    int match = 10 - num;
    if (nums.contains(match)) {
      return [num, match];
    } else {
      mySet.add(num);
    }
  }
}
//! print specific numbers in lasttt-----------------
// void main() {
//   int temp;
//   List<int> numbers = [6, 1, 6, 8, 1, 4, 25, 6, 3, 9, 6, 7];
//   for (int i = 0; i < numbers.length; i++) {
//     for (int j = numbers.length - 1; j > i; j--) {
//       if (numbers[i] == 6 && numbers[i] != numbers[j]) {
//         temp = numbers[i];
//         numbers[i] = numbers[j];
//         numbers[j] = temp;
//       }
//     }
//   }
//   print(numbers);
// }

//!print specific numbers in first------------------------------

// void main() {
//   List<int> a = [6, 1, 6, 8, 1, 4, 25, 6, 3, 9, 6, 7];
//   for (int i = 0; i < a.length; i++) {
//     for (int j = a.length - 1; j > i; j--) {
//       if (a[j] == 6 && a[i] != a[j]) {
//         int temp;
//         temp = a[i];
//         a[i] = a[j];
//         a[j] = temp;
//       }
//     }
//   }
//   print(a);
// }
