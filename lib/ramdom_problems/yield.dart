import 'dart:io';

void main() {}

Iterable<int> countIterable(int num) sync* {
  for (var i = 0; i < num; i++) {
    yield i;
    sleep(Duration(seconds: 1));
  }
}

//async* yield will return a Stream<dynamic>
Stream<int> runToMax(int n) async* {
  int i = 0;
  while (i < n) {
    yield i;
    i++;
    await Future.delayed(Duration(seconds: 300));
  }
}

//async* yield* will call a function and return Stream<dynamic>
Stream<int> countDownAsyncRecursive(int n) async* {
  if (n > 0) {
    yield n;
    yield* countDownAsyncRecursive(n - 1);
  }
}

//sync* yield will return an Iterable<dynamic>
Iterable<int> genIterates(int max) sync* {
  var i = 0;
  while (i < max) {
    yield i;
    i++;
  }
}

//sync* yield* will call a function and return Iterable<dynamic>
Iterable<int> countDownSyncRecursive(int n) sync* {
  if (n > 0) {
    yield n;
    yield* countDownSyncRecursive(n - 1);
  }
}
