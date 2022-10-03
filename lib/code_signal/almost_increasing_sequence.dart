void main(List<String> args) {
  print(AlmostIncreasingSequence().solution([5, 67, 98, 3]));
}

class AlmostIncreasingSequence {
  bool solution(List<int> sequence) {
    var count = 0;
    for (var i = 0; i < sequence.length - 1; i++) {
      if (sequence[i] >= sequence[i + 1]) {
        count++;
        if (i != 0 && sequence[i + 1] <= sequence[i - 1]) {
          return false;
        }
      }
    }

    return count <= 1;
  }
}

//sequence: [40, 50, 60, 10, 20, 30] false
//sequence: [1, 2, 5, 3, 5] true
//sequence: [1, 2, 5, 5, 5]
//sequence: [10, 1, 2, 3, 4, 5, 6, 1]

//sequence: [123, -17, -5, 1, 2, 3, 12, 43, 45] true
//sequence: [1, 2, 3, 4, 99, 5, 6] true
//sequence: [1, 2, 3, 4, 5, 3, 5, 6] false
//sequence: [10, 1, 2, 3, 4, 5] true
//sequence: [1, 2, 1, 2] false
//1, 2, 3, 4, 3, 6 true
//3, 5, 67, 98, 3 true
/* 
Given a sequence of integers as an array, determine whether it is possible to obtain a strictly 
increasing sequence by removing no more than one element from the array.

Note: sequence a0, a1, ..., an is considered to be a strictly increasing if a0 < a1 < ... < an. 
Sequence containing only one element is also considered to be strictly increasing.

Example

For sequence = [1, 3, 2, 1], the output should be
solution(sequence) = false.

There is no one element in this array that can be removed in order to get a strictly increasing sequence.

For sequence = [1, 3, 2], the output should be
solution(sequence) = true.

You can remove 3 from the array to get the strictly increasing sequence [1, 2]. Alternately, 
you can remove 2 to get the strictly increasing sequence [1, 3].

Input/Output

[execution time limit] 4 seconds (dart)

[input] array.integer sequence

Guaranteed constraints:
2 ≤ sequence.length ≤ 105,
-105 ≤ sequence[i] ≤ 105.
 */