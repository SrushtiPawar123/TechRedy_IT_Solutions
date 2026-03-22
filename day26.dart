
class Animal {
  void sound() {
    print("Animals make different sounds.");
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print("Dog barks: Woof Woof!");
  }
}

class Cat extends Animal {
  @override
  void sound() {
    print("Cat meows: Meow Meow!");
  }
}

void main() {
  // Creating objects
  Animal myAnimal = Animal();
  Animal myDog = Dog();
  Animal myCat = Cat();

  myAnimal.sound(); // Calls base class method
  myDog.sound();    // Calls Dog's overridden method
  myCat.sound();    // Calls Cat's overridden method
}