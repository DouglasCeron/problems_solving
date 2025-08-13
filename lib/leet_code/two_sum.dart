void main(List<String> args) {
  final nums = [3, 2, 4];
  final target = 6;

  final result = twoSum(nums, target);
  print(result);
}

List<int> twoSum(List<int> nums, int target) {
  final Map<int, int> numToIndex = {};
  for (var i = 0; i < nums.length; i++) {
    final complement = target - nums[i];
    if (numToIndex.containsKey(complement)) {
      return [numToIndex[complement]!, i];
    }
    numToIndex[nums[i]] = i;
  }
  return [];
}
