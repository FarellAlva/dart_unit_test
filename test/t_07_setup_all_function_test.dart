import 'package:test/test.dart';

void main() {
  var data = 'testingg';

  setUpAll(() => print('start unit testing')); //akan diprint start testing
  setUp(() {
    data = 'setUp';
    print(data);
  });
  tearDown(() => print(data));
  group('test string', () {
    // tearDown(() => print(data));
    test('string first', () {
      //data = 'setUp';
      data = '$data test1';
      expect(data, 'setUp test1');
    });

    test('string second', () {
      //data = 'setUp';
      data = '$data test2';
      expect(data, 'setUp test2');
    });
  });
}
