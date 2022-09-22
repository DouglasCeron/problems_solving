import 'dart:math';

class Sorting {
  void sorting() {
    List<int> list = [6, 2, 3, 8];

    list.sort((a, b) => a - b);
  }

  void bigger() {
    List<int> list = [6, 2, 3, 8];
    list.reduce((curr, next) => curr > next ? curr : next);
  }

  void smallest() {
    List<int> list = [6, 2, 3, 8];
    list.reduce((curr, next) => curr < next ? curr : next);
  }
}
