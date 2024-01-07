import 'package:google_books_api/google_books_api.dart';

Future<List<Book>> getBooks(String category) async {
  return await const GoogleBooksApi().searchBooks(
    category, 
    maxResults: 20,
    printType: PrintType.books,
    orderBy: OrderBy.relevance,
  );
}
