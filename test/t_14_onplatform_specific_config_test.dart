@OnPlatform({'mac-os': Skip('this unit test isnot working in macos')})

import 'package:test/test.dart';

int sum(int a, int b) => a + b;

void main() {
  group('test sum', () {
    test(
      'positif',
      () {
        expect(sum(1, 2), 3);
      },
    );
    test('negatif', () {
      expect(sum(2, -3), -1);
    });
  }, onPlatform: {'mac-os': Skip('does not support macos')});
}
