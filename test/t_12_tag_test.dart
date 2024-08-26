@Tags(['farell', 'alva'])

import 'package:test/test.dart';

void main() {
  test("Contoh test", () {
    print('tag1');
  }, tags: ['tag1']);

  test("Contoh test2", () {
    print('tag2');
  }, tags: ['tag2']);
}
