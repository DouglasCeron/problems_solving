void main(List<String> args) {
  List<int> list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int target = 8;
  print(recurssiveBinarySearch(list, target));
}

bool? recurssiveBinarySearch(List<int> list, int target) {
  int midPoint = 0;
  if (list.isEmpty) {
    return null;
  } else {
    midPoint = (list.length / 2).floor();
  }

  if (list[midPoint] == target) {
    return true;
  } else {
    if (list[midPoint] < target) {
      var aux = list.skipWhile((value) => value <= list[midPoint]);
      return recurssiveBinarySearch(aux.toList(), target);
    } else {
      var aux = list.where((value) => value < list[midPoint]);
      return recurssiveBinarySearch(aux.toList(), target);
    }
  }
}
