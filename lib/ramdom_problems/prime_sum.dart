void main() {
  print(primeSum(7));
}

int primeSum(int max) {
  int total = 0;
  for (var i = 1; i < max; i++) {
    for (var j = 2; j < i; j++) {
      if (i % j == 0) {
        continue;
      }
    }

    total += i;
  }
  return total;
}
