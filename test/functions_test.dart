import 'package:flutter_test/flutter_test.dart';
import 'package:test_ci/utils/functions.dart';

void main() {
  late Functions func;

  setUp(() => func = Functions());

  test('test Function', () {
    // act
    final result = func.test('x', 'x');

    // assert
    expect(result, true);
  });

  test('test Function xxx', () {
    // act
    final result = func.test('eee', 'fff');

    // assert
    expect(result, true);
  });
}
