import 'dart:io';

void main() {}

Iterable<int> countIterable(int num) sync* {
  for (var i = 0; i < num; i++) {
    yield i;
    sleep(Duration(seconds: 1));
  }
}

Stream<int> countStream(int num) async* {
  for (var i = 0; i < num; i++) {
    yield i;
    sleep(Duration(seconds: 1));
  }
}

Iterable<int> getRange(int start, int finish) sync* {
  if (start <= finish) {
    yield start;
    for (final value in getRange(start + 1, finish)) {
      yield value;
    }
  }
}

Iterable<int> getRangeYield(int start, int finish) sync* {
  if (start <= finish) {
    yield start;
    yield* getRange(start + 1, finish);
  }
}
