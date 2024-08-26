import 'package:test/test.dart';

void main() {
  var data = 'testingg';

  setUp(() {
    data = 'setUp';
    print(data);
  });
  tearDown(() => print(data)); //akan selalu dieksekusi di akhir testing

  group('test string', () {
    // tearDown(() => print(data)); //bisa di taruh di grup tertentu jika mau berlaku disini saja
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
