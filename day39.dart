// Abstract class
abstract class Animal {
  // Abstract method (no body)
  void makeSound();

  // Concrete method (with body)
  void sleep() {
    print("Sleeping...");
  }
}

// Subclass Dog extends abstract class Animal
class Dog extends Animal {
  @override
  void makeSound() {
    print("Woof! Woof!");
  }
}

// Subclass Cat extends abstract class Animal
class Cat extends Animal {
  @override
  void makeSound() {
    print("Meow!");
  }
}

void main() {
  // You cannot do: var a = Animal(); ❌
  // Because abstract classes cannot be instantiated directly.

  Animal dog = Dog();
  dog.makeSound(); // Output: Woof! Woof!
  dog.sleep();     // Output: Sleeping...

  Animal cat = Cat();
  cat.makeSound(); // Output: Meow!
  cat.sleep();     // Output: Sleeping...
}
