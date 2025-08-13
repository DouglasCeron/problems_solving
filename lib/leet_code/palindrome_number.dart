void main(List<String> args) {
  final number = -121;

  print(isPalindrome(number));
}

bool isPalindrome(int x) =>
    x >= 0 ? x == int.parse(x.toString().split('').reversed.join()) : false;
