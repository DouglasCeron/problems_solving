void main(List<String> args) {
  List<int>? list = [1, 2, 3, 4];

  print(productArray(list));
}

List<int?> productArray(List<int> list) {
  List<int> aux = [];
  for (var i = list.length - 1; i > 0; i--) {}

  return aux;
}




// given array [1,2,3,4] => should return [24,12,8,6]. product array with the same size of the original 