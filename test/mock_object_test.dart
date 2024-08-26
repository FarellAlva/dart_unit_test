import 'package:dart_unit_test/book.dart';
import 'package:dart_unit_test/src/book_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

@GenerateNiceMocks([MockSpec<BookRepository>()])
import "mock_object_test.mocks.dart";

void main() {
  group("BookService", () {
    var bookRepository = MockBookRepository();
    var bookService = BookService(bookRepository);

    test('save new book must success', () {
      bookService.save("1", "tutorial dart", 100000);
      verify(bookRepository.save(Book("1", 'tutorial dart', 100000))).called(1);
    });

    test("find book by id NOT found test", () {
      expect(() {
        bookService.find('1');
      }, throwsException);
    });

    test('find book by id success', () {
      when(bookRepository.findByid('1'))
          .thenReturn(Book('1', "tutorial dart", 100000));

      var book = bookService.find('1');
      expect(book, equals(Book("1", "tutorial dart", 100000)));
      verify(bookRepository.findByid("1")).called(1);
    });

    test('find by di test123', () {
      when(bookRepository.findByid(argThat(startsWith("test"))))
          .thenReturn(Book('test123', "tutorial dart", 100000));

      var book = bookService.find('test');
      expect(book, equals(Book("test123", "tutorial dart", 100000)));
      verify(bookRepository.findByid(any)).called(1);
    });
  });
}
