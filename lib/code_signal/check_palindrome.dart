class CheckPalindrome {
  static bool solution(String inputString) {
    return inputString == inputString.split('').reversed.join();
  }
}

/*
Given the string, check if it is a palindrome.

Example

For inputString = "aabaa", the output should be
solution(inputString) = true;
For inputString = "abac", the output should be
solution(inputString) = false;
For inputString = "a", the output should be
solution(inputString) = true.
Input/Output

[execution time limit] 4 seconds (dart)

[input] string inputString

A non-empty string consisting of lowercase characters.

Guaranteed constraints:
1 ≤ inputString.length ≤ 105.

[output] boolean

true if inputString is a palindrome, false otherwise.

[Dart] Syntax Tips

// Prints help message to the console
// Returns a string
String helloWorld(String name) {
    print("This prints to the console when you Run Tests");
    return "Hello, " + name;
}
*/