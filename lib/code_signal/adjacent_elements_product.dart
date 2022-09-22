import 'dart:math';

class AdjacentElementsProduct {
  static int solution(List<int> inputArray) {
    var next = 0;
    var current = inputArray.first;
    var pow = current;
    var higher = -9223372036854775808;

    for (var i = 1; i < inputArray.length; i++) {
      next = inputArray[i];
      pow = current * next;
      higher = max(pow, higher);
      current = inputArray[i];
    }

    return higher;
  }
}
//AKANE ALGORITHM

/* 
Given an array of integers, find the pair of adjacent elements that has the largest product and return that product.

Example

For inputArray = [3, 6, -2, -5, 7, 3], the output should be
solution(inputArray) = 21.

7 and 3 produce the largest product.

Input/Output

[execution time limit] 4 seconds (dart)

[input] array.integer inputArray

An array of integers containing at least two elements.

Guaranteed constraints:
2 ≤ inputArray.length ≤ 10,
-1000 ≤ inputArray[i] ≤ 1000.

[output] integer

The largest product of adjacent elements.*/