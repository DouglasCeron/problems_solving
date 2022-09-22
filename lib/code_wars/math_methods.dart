import 'dart:math';

class MathMethods {
  static int squareSum(List<int> list) {
    int sum = 0;
    list.map((e) => e * e).forEach(
      (element) {
        sum += element;
      },
    );

    return sum;
  }

  static double triangularNumber(int indexNumber) {
    double soma = 0;
    if (indexNumber < 0) return 0;
    return soma = indexNumber * (1 + indexNumber) / 2;
  }

  static bool areTheyTheSame(List<int> listA, List<int> listB) {
    return true;
  }

  static List<int> sumsOfParts(List<int>? ls) {
    if (ls == null) {
      ls = <int>[0];
      return ls;
    }
    List<int> auxList = List.filled(ls.length, 0, growable: true);
    for (int i = 0; i < ls.length; i++) {
      for (int j = i; j < ls.length; j++) {
        auxList[i] += ls[j];
      }
    }

    auxList.add(0);

    return auxList;
  }

  static List<int> sumsOfPartsReduce(List<int>? ls) {
    ls = [0, 1, 3, 6, 10];
    if (ls == null) {
      ls = <int>[0];
      return ls;
    }
    List<int> resultList = List.filled(ls.length + 1, 0);
    List<int> auxList = List<int>.filled(ls.length, 0, growable: true);
    auxList = ls.toList();

    for (var i = 0; i < ls.length; i++) {
      resultList[i] = auxList.reduce((value, element) => value + element);
      auxList.removeAt(0);
    }

    return resultList;
  }

  // static List<int>? sumOfPartsDiego(List<int>? ls) {
  //   List<int> aux = List<int>.filled(ls!.length, 0);
  //   List<int> reverseList = ls.reversed.toList();
  //   int count = 0;

  //   for (var i = 0; i < ls.length; i++) {
  //     aux[i] = reverseList.map((e) => e[i]);
  //   }
  //   return ls;
  // }

  static evenNumbersInAnArray(List<int> arr, n) {
    List<int> reversedList = arr.reversed.toList();
    List<int> auxList = List<int>.filled(arr.length, 0);
    int count = 0;

    for (var i = 0; i < arr.length; i++) {
      if (n != count) {
        if (reversedList[i] % 2 == 0) {
          auxList[i] = reversedList[i];
          count++;
        }
      }
    }
    auxList.reversed.forEach((element) {
      if (element != 0) print(element);
    });
  }

  static List<int> evenNumbers(List<int> arr, int n) {
    return arr.reversed.where((element) => element.isEven).take(n).toList().reversed.toList();
  }

  static int? stringToNumber(String str) {
    return int.tryParse(str);
  }

  static int returnNegative(int number) {
    return number < 0 ? number : -number;
  }

  static bool betterThanAverage(List<int> classPoints, int yourPoints) {
    double result = classPoints.reduce((value, element) => value + element) / classPoints.length;

    return result < yourPoints;
  }

  static int oddCount(int n) {
    int count = 0;
    for (var i = 0; i < n; i++) {
      if (i % 2 != 0) {
        count++;
      }
    }

    return count;
  }

  static int oddCountTruncate(int n) {
    return n ~/ 2;
  }

  static int findDifference(List<int> a, List<int> b) {
    return (a.reduce((value, element) => value * element) - b.reduce((value, element) => value * element)).abs();
  }

  static int expressionMatter(a, b, c) {
    a = 1;
    b = 10;
    c = 1;
    List<int> list = [];
    list.add(a * (b + c));
    list.add(a * b * c);
    list.add(a + b * c);
    list.add((a + b) * c);
    list.add(a + b + c);

    return list.reduce((curr, next) => curr > next ? curr : next);
  }

  static int expressionMatterReduceMax(a, b, c) {
    List<int> list = [a * (b + c), a * b * c, a + b * c, (a + b) * c, a + b + c];
    return list.reduce(max);
  }

  static int binToDec(String bin) {
    return int.parse(bin, radix: 2);
  }

  static int binToDecForLoop(String bin) {
    var chars = bin.split('');
    var num = 0;

    for (String c in chars) {
      if (c == '1') {
        num = num * 2 + 1;
      } else {
        num = num * 2;
      }
    }

    return num;
  }

  static int positiveSum(List<int> arr) {
    if (arr.every((element) => element < 0) || arr.isEmpty) return 0;
    return arr.where((element) => element > 0).reduce((value, element) => value + element);
  }

  static int positiveSumFold(List<int> arr) => arr.fold(0, (_this, _next) => _this + (_next > 0 ? _next : 0));

  //TODO RESOLVER
  static int nbDig(int n, int d) {
    n = 25;
    d.toString().runes;
    Iterable<String> list = List<String>.generate(n + 1, (index) => (index * index).toString());
    // print(list.where((e) => e.runes.contains(49)).length);
    // print(list.where((e) => e.runes.contains(49)));
    var aux = list.map((e) => e.split(''));
    print(aux);
    aux.forEach((e) => e);
    return 999;
  }

  static num opposite(num n) {
    return -n;
  }

  static bool setAlarm(bool employed, bool vacation) {
    if (employed == true && vacation == false) {
      return true;
    } else {
      return false;
    }
  }

  static List<int> reverseList(List<int> list) {
    List<int> reversedList = [];
    reversedList.addAll(list.reversed);

    return reversedList;
  }

  static List<int> reverseList2(List<int> list) => [...list.reversed];

  static List<int> reverseList3(List<int> list) => List.from(list.reversed);

  static List<int> reverseList4(List<int> list) => list.reversed.toList();

  static int predictAge(int age1, int age2, int age3, int age4, int age5, int age6, int age7, int age8) {
    var list = [age1, age2, age3, age4, age5, age6, age7, age8];

    return (sqrt(list.map((e) => e * e).reduce((value, element) => value + element)) ~/ 2);
  }

  static int save(List<int> sizes, int hd) {
    sizes = [];
    hd = 47;
    int aux = 0;
    int count = 0;
    if (sizes.isEmpty) return 0;
    if (sizes[0] > hd) return 0;
    for (var i = 0; i < sizes.length; i++) {
      if ((aux + sizes[i]) > hd) {
        break;
      } else {
        aux += sizes[i];
        count++;
      }
    }

    return count;
  }

  static int save2(List<int> sizes, int hd) {
    for (var n = 0; n < sizes.length; hd -= sizes[n++]) {
      if (sizes[n] > hd) {
        return n;
      }
    }
    return sizes.length;
  }
}
