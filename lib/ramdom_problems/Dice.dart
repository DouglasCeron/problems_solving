import 'dart:math';

void main() {
  var dice = Dice(20);
  print(dice.roll());
}

class Dice {
  int? sides;
  Dice(this.sides);

  int roll() => Random().nextInt(sides!);
}
