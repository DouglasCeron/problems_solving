void main(List<String> args) {
  var list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int target = 8;

  linearSearch(list, target);
}

void linearSearch(List list, target) {
  list.shuffle();
  for (var i = 0; i < list.length; i++) {
    if (list[i] == target) {
      print('Elemento encontrado na posição ${i + 1}');
    }
  }
}
