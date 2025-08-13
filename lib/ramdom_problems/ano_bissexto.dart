void main() {
  print(isBissexto(2016));
  print(isBissextoOneLine(2021));
}

bool isBissexto(int ano) {
  bool result = false;
  if (ano % 400 == 0) {
    result = true;
  }
  if (ano % 4 == 0 && ano % 100 != 0) {
    result = true;
  }
  return result;
}

bool isBissextoOneLine(int ano) {
  return ano % 400 == 0 || (ano % 4 == 0 && ano % 100 != 0);
}
