
class Book {
  String title;
  String author;
  bool isAvailable;

  Book(this.title, this.author, {this.isAvailable = true});

  void borrow() {
    if (isAvailable) {
      isAvailable = false;
      print("You borrowed '$title' by $author.");
    } else {
      print("Sorry, '$title' is already borrowed.");
    }
  }

  void returnBook() {
    isAvailable = true;
    print("You returned '$title'. Thank you!");
  }
}
class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
    print("Added '${book.title}' by ${book.author} to the library.");
  }

  void showAvailableBooks() {
    print("\nAvailable Books:");
    for (var book in books) {
      if (book.isAvailable) {
        print("- ${book.title} by ${book.author}");
      }
    }
  }
}

void main() {
  var library = Library();

  library.addBook(Book("1984", "George Orwell"));
  library.addBook(Book("The Alchemist", "Paulo Coelho"));
  library.addBook(Book("Clean Code", "Robert C. Martin"));

  library.showAvailableBooks();

  library.books[0].borrow();

  library.showAvailableBooks();

  library.books[0].returnBook();

  library.showAvailableBooks();
}