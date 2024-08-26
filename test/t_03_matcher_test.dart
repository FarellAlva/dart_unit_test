import 'package:test/test.dart';

sayHello(String name) {
  return 'hi kamu hei $name';
}

sum(int a, b) {
  return a + b;
}

void main() {
  test('test say hello with mathcer', () {
    var response = sayHello('dart');
    expect(response, endsWith("dart"));
    expect(response, startsWith("hi"));
    expect(response, equalsIgnoringCase("hi Kamu hei dart"));
  });

  test('test summ matcher', () {
    expect(sum(1, 1), equals(2));
  });
}
