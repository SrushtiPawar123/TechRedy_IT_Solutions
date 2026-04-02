void main() {
  // Step 1: Declare a nullable variable
  String? name;

  // Step 2: Assign value conditionally
  bool assignValue = true; // change to false to test null case
  if (assignValue) {
    name = "Srushti";
  }

  // Step 3: Use null-aware operators
  // ?? provides a default value if null
  String displayName = name ?? "Guest";

  // ?. safely calls methods on nullable variables
  int? length = name?.length;

  // ! asserts non-null (use carefully)
  if (name != null) {
    print("Name in uppercase: ${name!.toUpperCase()}");
  }

  // Step 4: Print results
  print("Hello, $displayName!");
  print("Name length: ${length ?? 0}");
}