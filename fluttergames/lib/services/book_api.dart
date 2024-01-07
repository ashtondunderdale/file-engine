import 'package:google_books_api/google_books_api.dart';

Future<List<Book>> getBooks(String category, int startIndex) async {
  return await const GoogleBooksApi().searchBooks(
    category, 
    maxResults: 40,
    printType: PrintType.books,
    orderBy: OrderBy.relevance,
    startIndex: startIndex
  );
}
