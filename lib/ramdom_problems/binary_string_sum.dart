import 'dart:math';

void main(List<String> args) {
  List<String> binaryList = ['100', '100', '101'];

  var result = binarySumMap(binaryList);
  print(result);
}

double binarySumMap(List<String> list) {
  var mapList = list.asMap();
  double sum = 0;
  for (var i = 0; i < mapList.length; i++) {
    var binaryList = mapList[i]!.split('').reversed.toList();
    for (var j = 0; j < binaryList.length; j++) {
      if (binaryList[j] == '1') {
        sum += pow(2, j);
      }
    }
  }
  return sum;
}

int binarySum(String num1, String num2) {
  double sum = 0;
  List reversedList1 = num1.split('').reversed.toList();
  List reversedList2 = num2.split('').reversed.toList();
  for (var i = 0; i < reversedList1.length; i++) {
    if (reversedList1[i] == '1') {
      sum += pow(2, i);
    }
  }
  for (var i = 0; i < reversedList2.length; i++) {
    if (reversedList2[i] == '1') {
      sum += pow(2, i);
    }
  }

  print(sum);

  return 1;
}
