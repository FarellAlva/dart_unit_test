@Retry(10) //akan diulang sebanyak 10 kali
//walaupun failed //global scope

import 'package:test/test.dart';

void main() {
  test('test failed?', () {
    expect(1, 2); //failed
  }, retry: 5); //spesifik group/test tertentu
}
