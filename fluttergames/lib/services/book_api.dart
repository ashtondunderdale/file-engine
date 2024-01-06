import 'package:google_books_api/google_books_api.dart';

void getBooks() async {
  final List<Book> books = await const GoogleBooksApi().searchBooks(
  'philosophy', 
  maxResults: 20,
  printType: PrintType.books,
  orderBy: OrderBy.relevance,
);

  for (Book book in books){
    print(book.volumeInfo.title);

  }

}

