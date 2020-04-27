# Task

- We have to calculate the area of a rectangle, a square and a circle. Create an abstract class 'Shape' with three abstract methods namely 'RectangleArea' taking two parameters, 'SquareArea' and 'CircleArea' taking one parameter each. The parameters of 'RectangleArea' are its length and breadth, that of 'SquareArea' is its side and that of 'CircleArea' is its radius. Now create another class 'Area' containing all the three methods 'RectangleArea', 'SquareArea' and 'CircleArea' for printing the area of rectangle, square and circle respectively. Create an object of class 'Area' and call all the three methods. 
- Create two interfaces of person and profession. Create methods to display personal information i,e. name, age in “person”. The other interface should have methods to display the profession of the person along with his/her salary. Create a class Employee which implements both of these interfaces. Test your program by calling the methods one by one.

# Code
```dart
// abstract class shape
// reactArea(l,b)
// squareArea(sides)
// circleArea(radius)

// class area {
//  reactArea(l,b)
//  squareArea(sides)
//  circleArea(radius)
// }

// interface person
// displayInfo()
// interface profession
// displayProfession()
// class employee
abstract class Shape {
  double reactArea(double l, double b);
  double squareArea(double side);
  double circleArea(double radius);
}

class Area extends Shape {
  @override
  double reactArea(double l, double b) {
    return l * b;
  }

  @override
  double squareArea(sides) {
    return sides * sides;
  }

  @override
  double circleArea(radius) {
    const double pi = 3.1415926535897932;
    return 2 * pi * radius;
  }
}

class IPerson {
  displayInfo() {}
}

class IProfession {
  displayProfession() {}
}

class Employee implements IPerson, IProfession {
  @override
  displayInfo() {
    print("I'm employee, age: 20");
  }

  @override
  displayProfession() {
    print("I'm professional, salary: 20");
  }
}

void main() {
  Area obj = Area();
  print(obj.squareArea(6));
  print(obj.reactArea(6, 6));
  print(obj.circleArea(6));

  Employee e = Employee();
  e.displayInfo();
  e.displayProfession();
}
```

# Output

```bash
36
36
37.69911184307752
I'm employee, age: 20
I'm professional, salary: 20
```