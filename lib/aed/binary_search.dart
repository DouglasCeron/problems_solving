void main(List<String> args) {
  var list = List.generate(30, (index) => index + 5);
  print(list);
  int target = 8;

  var result = binarySearch(list, target);
  print('Target na posição = ${result! + 1}');
}

int? binarySearch(List list, int target) {
  var first = 0;
  var last = list.length - 1;
  var midPoint = 0;
  while (first <= last) {
    midPoint = (first + last) ~/ 2;
    if (list[midPoint] == target) {
      return midPoint;
    } else if (list[midPoint] < target) {
      first = midPoint + 1;
    } else {
      last = midPoint - 1;
    }
  }
  print('Valor não encontrado');
  return null;
}
