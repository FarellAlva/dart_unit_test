@TestOn("mac-os || windows ") // global
import 'package:test/test.dart';

int sum(int a, int b) => a + b;

void main() {
  group('test sum', () {
    test('positif', () {
      expect(sum(1, 2), 3);
    }, testOn: 'windows'); //ini berarti test yang hanya dijalankan di windws

    test('negatif', () {
      expect(sum(2, -3), -1);
    });
  });
}
