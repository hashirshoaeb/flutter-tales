# first_app

A new Flutter project.

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

# DART

Everything in dart is object. Programming language is strongly typed.
Type inference.

Sample code:

```dart
class person {

  String name;
  var age;
  String gender;

  person(String name, var age, String gender){
    this.name = name;
    this.age = age;
    this.gender = gender;
  }
}
String addNum(var num1, String num2){
  return (num1 + num2);
}

void main() {
//   var value11 = addNum(2.0 , '6');
//   var value12 = addNum(2.0, '7');
//   double ans1 = value11 + value12;
//   print(ans1);

//   var value21 = addNum("2.0" , '6');
//   var value22 = addNum("2.0", '7');
//   var ans2 = value21 + value22;
//   print(ans2);
//   print("Hello World in DART");

  var v1 = person("Hashir", 21, "male");
  print(v1.age);
  print(v1.name);
  v1.age = "200.1";
  print(v1.age);
}
```

Two types of widgets:

- Stateless - which does not save the state
- Statefull - which maintains the state - like cookies, login sessions

there are two type of arguments like in python,
positional aggumaents , named arguments

```dart
class person {

  String name;
  var age;
  String gender;
  // constructor
  person({ this.name, this.age, this.gender});

}

void main() {
  //object
  var v1 = person(name:"Hashir", age:21, gender:"male");
}
```

- Pascel notation
- class is a widget
- we are creating a widget tree
- extend use to inherite
- this is a builder widget.
- flutter takes the control on screen pixcels
- every widget in flutter is actaully a dart class with a - build method.
- Scaffold is a design widget

Stateless widgets are immutable, meaning that their properties can’t change—all values are final.

Stateful widgets maintain state that might change during the lifetime of the widget. Implementing a stateful widget requires at least two classes: 1) a StatefulWidget class that creates an instance of 2) a State class. The StatefulWidget class is, itself, immutable, but the State class persists over the lifetime of the widget.

- annonymus function jiska koi nam na ho,
- press 'Command' and hover the class object, to

```dart
class person {

  String name;
  var age;
  String gender;
  // constructor
  person({ this.name, this.age, this.gender});

  //   person({ this.name}); not possible
  // customise constructor // we give name to constructor
  person.oldman({this.name}){
    this.age = 60;
  }
}

void main() {
  //object
  var v1 = person(name:"Hashir", age:21, gender:"male");
  print(v1.age);
  print(v1.name);
  var v2 = person.oldman(name: "hashir");
  print(v2.age);
}
```
