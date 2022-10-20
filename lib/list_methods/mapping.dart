void main() {
  List<int> list = <int>[1, 2, 3, 4, 5];
  print(list.runtimeType);

  var result = list.map((int i) => '$i').toList();

  print(result.runtimeType);
}
