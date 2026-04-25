void main() {
  // --- Lists ---
  List<int> numbers = [1, 2, 3, 4, 5];

  // Using map: square each number
  var squares = numbers.map((n) => n * n).toList();
  print("Squares: $squares");

  // Using where: filter even numbers
  var evens = numbers.where((n) => n % 2 == 0).toList();
  print("Even numbers: $evens");

  // Using reduce: sum of all numbers
  var sum = numbers.reduce((a, b) => a + b);
  print("Sum: $sum");

  // --- Sets ---
  Set<String> fruits = {"apple", "banana", "apple"}; // duplicates removed
  print("Fruits Set: $fruits");

  // --- Maps ---
  Map<String, int> studentMarks = {
    "Alice": 85,
    "Bob": 92,
    "Charlie": 78,
  };
  print("Marks of Bob: ${studentMarks["Bob"]}");

  // Iterating over Map
  studentMarks.forEach((name, mark) {
    print("$name scored $mark");
  });

  // --- Spread Operator ---
  List<int> moreNumbers = [6, 7, 8];
  List<int> combined = [...numbers, ...moreNumbers];
  print("Combined List: $combined");

  // --- Collection if ---
  bool addExtra = true;
  List<int> conditionalList = [
    1,
    2,
    3,
    if (addExtra) 99, // adds 99 only if condition is true
  ];
  print("Conditional List: $conditionalList");

  // --- Collection for ---
  List<String> fruitList = [
    for (var f in fruits) f.toUpperCase()
  ];
  print("Fruit List (Uppercase): $fruitList");
}
