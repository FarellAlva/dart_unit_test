import 'package:test/test.dart';

void main() {
  var data = 'testingg';

  setUp(() => data = 'setUp');

  group('test string', () {
    test('string first', () {
      //data = 'setUp';
      data = '$data test1';
      expect(data, 'setUp test1');
    });

    test('string first', () {
      //data = 'setUp'; dari pada
      data = '$data test2';
      expect(data, 'setUp test2');
    });
  });
}
