void main(List<String> args) {
  final roman = 'IV';

  print(romanToInt(roman));
}

int romanToInt(String s) {
  int result = 0;
  for (int i = 0; i < s.length; i++) {
    int value = map[s[i]]!;
    if (i + 1 < s.length && value < map[s[i + 1]]!) {
      result -= value;
    } else {
      result += value;
    }
  }
  return result;
}

const Map<String, int> map = {
  'I': 1,
  'V': 5,
  'X': 10,
  'L': 50,
  'C': 100,
  'D': 500,
  'M': 1000,
};

const Map<String, int> mapExc = {
  'IV': 4,
  'VI': 6,
  'IX': 9,
  'XI': 11,
  'XL': 40,
  'LX': 60,
  'XC': 90,
  'CX': 110,
  'CD': 400,
  'DC': 600,
  'CM': 900,
  'MC': 1100,
};
