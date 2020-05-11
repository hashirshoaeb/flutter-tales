# Flutter Tales

A Flutter project for practice and example codes.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Method to Run

In order to run your application from terminal, type:

```bash
  $flutter emulators
```

Shows available emulators.

- To run an emulator, run 'flutter emulators --launch <emulator id>'.
- To create a new emulator, run 'flutter emulators --create [--name xyz]'.

```bash
  $flutter emulators --launch iOS Simulator
```

```bash
  $cd first_app
  $flutter run
```

# Apps

- [First App - Quiz App](https://github.com/hashirshoaeb/flutter-tales/tree/master)
- [Second App - Bank Transaction ](https://github.com/hashirshoaeb/flutter-tales/tree/second_app)

## Assignments

- Assignment 1

  Instead of using maps, do the same thing using class or structure [link](https://github.com/hashirshoaeb/flutter-tales/tree/Assignment-1)

## Lab work

- [Lab 3 - Dart Programming - Classes](./READMEdocs/lab3.md)
- [Lab 4 - Dart Programming - Classes Inheritance](./READMEdocs/lab4.md)
- [Lab 5 - Dart Programming - List](./READMEdocs/lab5.md)
- [Lab 6 - Dart Programming - Abstract Classes and Interfaces](./READMEdocs/lab6.md)
- [Lab 7 - Dart Programming - Exception Handling](./READMEdocs/lab7.md)
- [Lab 8 - Dart Programming – Functions](./READMEdocs/lab8.md)

# DART

## What is Dart

Dart is an **object oriented programming language**. It is primarily used for creating frontend user interfaces. And it is **strongly typed**.

## Variables, Functions, Types

Variables are used to temporarily store data.

```dart
 var name = 'Hashir';
 print(name); // Outputs ‘Hashir’
```

Here, **var** keyword is used to create variable. **Equal(=)** operator is used to assign value to the variable. And **print()** function is used to log the output.

Tip: It's common to use **camelCase** notation to name the variable.

In above example, variable **name** is of type **String**. Since Dart is able to **infer the type though** (because you initialise the variable with a value - 'Hashir'). It can also be written as follows.

```dart
String name = 'Hashir';
print(name); // Outputs 'Hashir'
```

**Types** describe the type of data of a variable. With types, you can ensure that a certain code expression only accepts numbers and the compiler “yells at you” if you pass wrong data.

| Type             | Example                            | More Information                                                                                                                                      |
| ---------------- | ---------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- |
| String           | String myName = 'Max';             | Holds text. You can use single or double quotes - just be consistent once you made your choice.                                                       |
| num, int, double | int age = 30; double price = 9.99; | num refers to “number” - there are two types of numbers in Dart: Integers (numbers without a decimal place) and doubles (numbers with decimal places) |
| object           | Person = Person();                 | Generally, everything in Dart is an object - even an integer. But objects can also be more complex, see below.                                        |

**Functions** allow you to define code snippets which you can call whenever and as often as you want.

```dart
void sayHello(String name) {
  print('Hello ' + name);
}

double addNumbers(double n1, double n2) {
  return n1 + n2;
}

```

## Objects & Object-orientation

Dart is an object-oriented programming language - that means that **every value in Dart is an object**, even primitive values like text (= String) or numbers (= Integers and Doubles).

Objects are data structures and created with the help of “Classes” because every object needs a blueprint (=> the class) based on which you can then create (“instantiate”) it.

```dart
class Person {
  var name = 'Max';
  var age = 30;

  void greet() {
  print('Hi, I am ' + name + ' and I am ' + age.toString() + ' years old!';
  }
}
```

The class only serves as a blueprint though! On its own, it does not give you an object! Instead, you can now create objects based on this class:

```dart
void main() {
  var myself = Person();
  print(myself.name); // use the . to access class properties & methods
}
```

## Positional & Named Arguments

- annonymus function jiska koi nam na ho,
- press 'Command' and hover the class object, to

* final vs const
  final is called a run time constant. when you code and made final, but you dont know the value to it,
  but know know what are you assigning to const eg:

# Flutter

- Pascel notation
- class is a widget
- we are creating a widget tree
- extend use to inherite
- this is a builder widget.
- flutter takes the control on screen pixcels
- every widget in flutter is actaully a dart class with a - build method.
- Scaffold is a design widget

Stateless widgets are immutable, meaning that their properties can’t change—all values are final.
Two types of widgets:

- Stateless - which does not save the state
- Statefull - which maintains the state - like cookies, login sessions

there are two type of arguments like in python,
positional aggumaents , named arguments
Stateful widgets maintain state that might change during the lifetime of the widget. Implementing a stateful widget requires at least two classes: 1) a StatefulWidget class that creates an instance of 2) a State class. The StatefulWidget class is, itself, immutable, but the State class persists over the lifetime of the widget.
flutter has control on each and every pixel of screen.

visible widget. => for handling input and output, eg. button
invisible widget => for handling layout and control eg. column
