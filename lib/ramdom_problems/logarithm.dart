import 'dart:math';

class Logarithm {
  static double logBase({int? base, int? num}) {
    return (log(num ?? 10) / log(base ?? 2));
  }
}
