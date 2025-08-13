void main() {
  var a = Value(a: 10, b: 9);
  var b = Value(a: 10, b: 9);

  print(a == b);
  print(a * 2);
}

class Value extends Object {
  int a;
  int b;

  Value({
    required this.a,
    required this.b,
  });

  @override
  bool operator ==(covariant Value other) => (a == other.a && b == other.b);

  Value operator *(int val) {
    return Value(a: a * val, b: b * val);
  }

  @override
  String toString() {
    return "$a - $b";
  }

  // @override
  // bool operator ==(covariant Value other) {
  //   if (other is Value) {
  //     if (a == other.a && b == other.b) {
  //       return true;
  //     }
  //   }
  //   return false;
  // }
}
