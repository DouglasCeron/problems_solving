class BoolMethods {
  static bool setAlarm2(bool employed, bool vacation) {
    return employed && !vacation;
  }

  static bool negationValue(String str, bool val) {
    return str.length.isEven ? val : !val;
  }

  static bool negationValue2(String str, bool val) => str.length.isEven == val;
}
