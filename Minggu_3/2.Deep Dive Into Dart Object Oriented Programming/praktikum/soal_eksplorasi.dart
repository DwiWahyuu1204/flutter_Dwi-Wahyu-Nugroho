abstract class Shape {
  double getArea();
  double getPerimeter();
}

class Circle implements Shape {
  double radius;

  Circle(this.radius);

  @override
  double getArea() {
    return 3.14 * radius * radius;
  }

  @override
  double getPerimeter() {
    return 2 * 3.14 * radius;
  }
}

class Square implements Shape {
  double side;

  Square(this.side);

  @override
  double getArea() {
    return side * side;
  }

  @override
  double getPerimeter() {
    return 4 * side;
  }
}

void main() {
  Circle circle = Circle(5);
  print(
      'Lingkaran : Luas: ${circle.getArea()}, Keliling: ${circle.getPerimeter()}');

  Square square = Square(4);
  print(
      'Persegi : Luas: ${square.getArea()}, Keliling: ${square.getPerimeter()}');
}
