# Task

Create typedef “convertTemp(int temp)” that take temperature as input. Create a 3 functions.

- Convert_centi
- Conver_kelvin
- Covert_farenhiet

Use both methods mentioned above and display the outputs.

# Code

```dart
// Celsius to Fahrenheit	° F = 9/5 ( ° C) + 32
// Kelvin to Fahrenheit	° F = 9/5 (K - 273) + 32
// Fahrenheit to Celsius	° C = 5/9 (° F - 32)
// Celsius to Kelvin	K = ° C + 273
// Kelvin to Celsius	° C = K - 273
// Fahrenheit to Kelvin	K = 5/9 (° F - 32) + 273

typedef double Operation(double temp);

double celsiusToFahrenheit(double temp) {
  return 9 / 5 * temp + 32;
}

double celsiusToKelvin(double temp) {
  return temp + 273;
}

double kelvinToFahrenheit(double temp) {
  return 9 / 5 * (temp - 273) + 32;
}

double kelvinToCelsius(double temp) {
  return temp - 273;
}

double fahrenheitToCelsius(double temp) {
  return 5 / 9 * (temp - 32);
}

double fahrenheitToKelvin(double temp) {
  return 5 / 9 * (temp - 32) + 273;
}

double convertTemp(double temp, Operation operation) {
  return operation(temp);
}

void main() {
  double temperature = 37.5;

  temperature = convertTemp(temperature, celsiusToFahrenheit);
  print(temperature);
  temperature = convertTemp(temperature, fahrenheitToCelsius);
  print(temperature);
  temperature = convertTemp(temperature, celsiusToKelvin);
  print(temperature);
  temperature = convertTemp(temperature, kelvinToFahrenheit);
  print(temperature);
  temperature = convertTemp(temperature, fahrenheitToKelvin);
  print(temperature);
}

```

# Output

```bash
99.5
37.5
310.5
99.5
310.5
```

# Task

Create a class Area. It should have 3 functions

- Cal_rectangle(int l, int w)
- Cal_circle(int pi,int r)
- Cal_Square(int l, int w)

In case any argument not passed the functions should assume it to be one.
Use default, positional, named, optional parameters where required.

# Code

```dart
class Area {
  int rectangle(int l, [int w]) {
    if (w == null)
      return square(l);
    else
      return l * w;
  }

  int square(int l, [int w]) {
    if (w == null)
      return l * l;
    else
      return rectangle(l, w);
  }

  double circle(int r, [double pi = 3.1415926535897932]) {
    return pi * r * r;
  }
}

void main() {
  int num;
  Area obj = new Area();
  num = obj.rectangle(4);
  print(num);
  num = obj.rectangle(4, 5);
  print(num);
}
```

# Output

```bash
16
20
```

# Task

Investigate the following statement and briefly explain what is happening in there with respect to functions. ‘nums’ is an iteratable list of numbers. (Hint: Closures).

```dart
  sum(nums) => nums.reduce( (a, b) => a + b);
```

# Description

There are two types of functions in dart.

1. named functions
2. nameless functions

Named functions is the method we are already familiar with, in many other languages. Nameless functions are also called anonymous functions. Anonymous function feels very much confusing in the beginning. Let's try to understand using an example.

```dart
String function(){
  return "Hello World";
}
```

The above functions can be written as, below

```dart
Function function = ()=> "Hello world";
```

or

```dart
Function function = (){
  return "Hello world";
};
```

Let's try to breakdown our task, and convert the anonymous functions to the named functions for better understanding.

```dart
  sum(List<int> nums) => nums.reduce( (a, b) => a + b);
```

The statment has 3 functions in line. Let's name them "sum", "reduce" and "add".

1.  (a, b) => a + b can be written as
    ```dart
    int add(int a, int b) {
      return a + b;
    }
    ```
2.  nums.reduce() is a builtin function from List class. For more details refer this [link](https://api.dart.dev/stable/1.10.1/dart-core/List/reduce.html). It can be written as
    ```dart
    int reduce(List<int> iterable, Function combine) {
      int value = iterable.first;
      iterable.skip(1).forEach((element) {
        value = combine(value, element);
      });
      return value;
    }
    ```
3.  sum(List<int> nums) can be written as
    ```dart
    int sum(List<int> nums){
      return reduce(nums, add);
    }
    ```

The above three funcional logic can be merged into a single function.

```dart
int sum(List<int> nums){
  int value = nums.first;             // reduce function logic
  nums.skip(1).forEach((element) {    // reduce function logic
    value = value + element;          // add    function logic
  });
  return value;
}

void main() {
  List<int> list = [1, 2, 3, 4, 5];
  print(list);
  print(sum(list));
}
```

# Task

Write a function for checking if a number is prime. You will need to use the % operator. If x % y == 0, then when x is divided by y (x / y), there is no remainder. Write a second function that calculates the first n prime numbers that uses the first function.

# Code

```dart
// returns true if number is prime
bool isPrime(int num) {
  if (num < 0) {
    // throw error;
  }
  for (int i = 2; i <= num / 2; ++i) {
    if (num % i == 0) return false;
  }
  return true;
}

// retruns is list of prime numbers of length num
List<int> primesTo(int num) {
  if (num < 1) {
    // throw error
  }
  List<int> list = new List<int>();
  int i = 1;
  while (list.length != num) {
    if (isPrime(i)) {
      list.add(i);
    }
    i++;
  }
  return list;
}

void main() {
  print(isPrime(1));
  print(primesTo(10));
}
```

# Output

```bash
true
[1, 2, 3, 5, 7, 11, 13, 17, 19, 23]
```
