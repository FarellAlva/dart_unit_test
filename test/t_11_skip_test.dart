@Skip("still not fix unit test ") // global
import 'package:test/test.dart';

int sum(int a, int b) => a + b;

void main() {
  group('test sum', () {
    test('positif', () {
      expect(sum(1, 2), 3);
    }, skip: 'not yet fix'); //named parameter
    test('negatif', () {
      expect(sum(2, -3), -1);
    });
  });
}
