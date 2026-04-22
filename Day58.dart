// Dart program: Library Management System

class Book {
  String title;
  String author;
  bool isAvailable;

  Book(this.title, this.author, {this.isAvailable = true});

  void borrowBook() {
    if (isAvailable) {
      isAvailable = false;
      print('You borrowed "$title" by $author.');
    } else {
      print('Sorry, "$title" is already borrowed.');
    }
  }

  void returnBook() {
    if (!isAvailable) {
      isAvailable = true;
      print('You returned "$title".');
    } else {
      print('"$title" was not borrowed.');
    }
  }

  @override
  String toString() {
    return '"$title" by $author - ${isAvailable ? "Available" : "Not Available"}';
  }
}

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
    print('Added: ${book.title}');
  }

  void showBooks() {
    print('\nLibrary Collection:');
    for (var book in books) {
      print(book);
    }
  }
}

void main() {
  // Create library
  var library = Library();

  // Add books
  library.addBook(Book("The Alchemist", "Paulo Coelho"));
  library.addBook(Book("1984", "George Orwell"));
  library.addBook(Book("Clean Code", "Robert C. Martin"));

  // Show all books
  library.showBooks();

  // Borrow a book
  library.books[1].borrowBook(); // Borrow "1984"

  // Show updated status
  library.showBooks();

  // Return the book
  library.books[1].returnBook();

  // Final status
  library.showBooks();
}
