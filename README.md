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

# Task

along reset add more button, name "I'm done", on press open new page with message, "thankyou"

## Assignment 1

instead of using maps, do the same thing using class or structure [link](https://github.com/hashirshoaeb/flutter-tales/tree/Assignment-1)

## [Lab 3](./READMEdocs/lab3.md)

# DART

Everything in dart is object. Programming language is strongly typed.
Type inference.

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
