import 'package:test/test.dart';

sayHello(String name) {
  return 'hi kamu $name';
}

void main() {
  test('test say hello', () {
    var response = sayHello('dart');
    expect(response, "hi kamu dart");
  });
}
