class Recursion {
  static factorial(int n) {
    if (n == 0) return 1;
    if (n >= 1) return n * factorial(n - 1);
  }

  static int fibPosition(int n) {
    if (n >= 3) {
      return fibPosition(n - 1) + fibPosition(n - 2);
    } else {
      return 1;
    }
  }

  static int memoizeFib(int n, List memo) {
    var result = 0;
    if (memo[n] != null) return memo[n]!;
    if (n == 1 || n == 2) {
      result = 1;
    } else {
      result = memoizeFib(n - 1, memo) + memoizeFib(n - 2, memo);
      return memo[n] = result;
    }
    return result;
  }

  // static fib_memo(int n) {
  //   var memo = (n + 1);
  //   return memoizeFib(n, memo);
  // }

  static String repeatStringRecursion(int n, String s) {
    if (n == 1) {
      return s;
    } else {
      return repeatStringRecursion(n - 1, s) + s;
    }
  }
}
