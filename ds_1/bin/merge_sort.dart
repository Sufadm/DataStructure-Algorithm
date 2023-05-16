List<int> mergesort(List<int> array) {
  if (array.length <= 1) {
    return array;
  }

  int mid = array.length ~/ 2;
  List<int> left = array.sublist(0, mid);
  List<int> right = array.sublist(mid);

  return merge(mergesort(left), mergesort(right));
}

List<int> merge(List<int> left, List<int> right) {
  List<int> result = [];
  while (left.isNotEmpty && right.isNotEmpty) {
    if (left.first <= right.first) {
      result.add(left.removeAt(0));
    } else {
      result.add(right.removeAt(0));
    }
  }

  if (left.isNotEmpty) {
    result.addAll(left);
  } else {
    result.addAll(right);
  }
  return result;
}

void main() {
  List<int> array = [5, 6, 7, 8, 9, 4, 31, 1, 1, 2, 2];
  print(mergesort(array));
}
