// Smart Library Management System in Dart

class Book {
  String title;
  String author;
  String isbn;
  bool isAvailable;

  Book(this.title, this.author, this.isbn, {this.isAvailable = true});

  void borrowBook() {
    if (isAvailable) {
      isAvailable = false;
      print("Book '$title' borrowed successfully.");
    } else {
      print("Sorry, '$title' is not available.");
    }
  }

  void returnBook() {
    isAvailable = true;
    print("Book '$title' returned successfully.");
  }
}

class Member {
  String name;
  int memberId;
  List<Book> borrowedBooks = [];

  Member(this.name, this.memberId);

  void borrow(Book book) {
    if (borrowedBooks.length >= 3) {
      print("$name cannot borrow more than 3 books.");
      return;
    }
    if (book.isAvailable) {
      book.borrowBook();
      borrowedBooks.add(book);
    } else {
      print("Book '${book.title}' is already borrowed.");
    }
  }

  void returnBook(Book book) {
    if (borrowedBooks.contains(book)) {
      book.returnBook();
      borrowedBooks.remove(book);
    } else {
      print("$name did not borrow '${book.title}'.");
    }
  }
}

class Library {
  List<Book> books = [];
  List<Member> members = [];

  void addBook(Book book) => books.add(book);
  void registerMember(Member member) => members.add(member);

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
  // Create library
  var library = Library();

  // Add books
  library.addBook(Book("Dart Basics", "John Doe", "ISBN001"));
  library.addBook(Book("Flutter Guide", "Jane Smith", "ISBN002"));
  library.addBook(Book("OOP in Dart", "Alice Brown", "ISBN003"));

  // Register members
  var member1 = Member("Srushti", 101);
  library.registerMember(member1);

  // Show available books
  library.showAvailableBooks();

  // Borrow and return books
  member1.borrow(library.books[0]);
  member1.borrow(library.books[1]);
  library.showAvailableBooks();

  member1.returnBook(library.books[0]);
  library.showAvailableBooks();
}
