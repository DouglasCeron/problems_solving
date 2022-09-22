class Loops {
  static factorial(int n) {
    int result = 1;
    for (var i = 1; i <= n; i++) {
      result *= i;
    }
    print(result);
  }
}
