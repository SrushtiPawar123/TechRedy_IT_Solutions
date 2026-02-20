
class Shape {
  void draw() {
    print("Drawing a generic shape...");
  }
}

class Circle extends Shape {
  @override
  void draw() {
    print("Drawing a Circle");
  }
}

class Triangle extends Shape {
  @override
  void draw() {
    print("Drawing a Triangle");
  }
}

class Square extends Shape {
  @override
  void draw() {
    print("Drawing a Square");
  }
}

void main() {
  Shape shape;

  shape = Circle();
  shape.draw(); 

  shape = Triangle();
  shape.draw(); 

  shape = Square();
  shape.draw(); 
}
 
