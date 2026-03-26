
class Animal {
  String name;

  Animal(this.name);

  void speak() {
    print("$name makes a sound.");
  }
}

class Dog extends Animal {
  Dog(String name) : super(name);

  @override
  void speak() {
    print("$name barks: Woof Woof!");
  }
}

class Cat extends Animal {
  Cat(String name) : super(name);

  @override
  void speak() {
    print("$name meows: Meow Meow!");
  }
}

void main() {
  Animal generic = Animal("Creature");
  Dog dog = Dog("Buddy");
  Cat cat = Cat("Kitty");

  generic.speak();
  dog.speak();
  cat.speak();
}