void main(List<String> args) {
  List list = List.generate(8, (index) => index);
  var result = insertMethod(list: list, value: 42, position: 0);
  print(result);

  var result2 = insertAtStart(list, 35);
  print(result2);

  var result3 = insertPythonModel(list, 55);
  print(result3);
}

List insertMethod(
    {required List list, required int value, required int position}) {
  list.insert(0, value);

  return list;
}

List insertAtStart(List list, int value) {
  list = [value, ...list];

  return list;
}

List insertPythonModel(List list, int value) {
  list = [value, for (int item in list) item];

  return list;
}
