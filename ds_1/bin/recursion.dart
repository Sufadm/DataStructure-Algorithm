//FIND FACTORIAL OF NUMBER

// void main() {
//   int n = 5;
//   int k = 1;
//   for (int i = 1; i <= n; i++) {
//     k = k * i;
//   }
//   print(k);
// }

void main() {
  F f = F();
  int ans = f.f(5);
  print(ans);
}

class F {
  int f(int n) {
    if (n <= 1) {
      return 1;
    }
    return n * f(n - 1);
  }
}

// void main() {
//   F f = F();
//   f.f(5);
// }

// class F {
//   int f(int n) {
//     if (n <= 1) {
//       return 1;
//     }
//     f(n - 1);
//     print(n);
//     return f(n - 1);
//   }
// }
