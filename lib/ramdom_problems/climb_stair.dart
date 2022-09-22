class ClimbStair {
  static int climbStsairs(int stairs) {
    List<int> list = List.generate(stairs, (index) => index + 1);
    int one = 1, two = 1;
    int temp = 0;
    for (var value in list) {
      temp = one;
      one = one + two;
      two = temp;
    }
    return temp;
  }
}


// how many ways do we have to climb a stair of n stairs 