# Task

Create a class having list of integers as attribute. Convert the list into a string that contains raindrop sounds corresponding to certain potential factors. A factor is a number that evenly divides into another number, leaving no remainder. The simplest way to test if a one number is a factor of another is to use the modulo operation.

The rules of raindrops are that if a given number:

- has 3 as a factor, add 'Pling' to the result.
- has 5 as a factor, add 'Plang' to the result.
- has 7 as a factor, add 'Plong' to the result.
- does not have any of 3, 5, or 7 as a factor, the result should be the digits of the number.

zero is NOT a FACTOR of any number except zero. Your program should throw an exception if your list checks zero to be a factor of any number.

Examples

- 28 has 7 as a factor, but not 3 or 5, so the result would be "Plong".
- 30 has both 3 and 5 as factors, but not 7, so the result would be "PlingPlang".
- 34 is not factored by 3, 5, or 7, so the result would be "34".
- 0 (throws exception)

# Code

```dart
class MusicDrop {
  List<int> beatlist;
  List<String> musiclist = new List<String>();

  MusicDrop(this.beatlist) {
    generateMusic();
  }

  bool _isdivisible({int num, int by}) {
    return (num % by) == 0;
  }

  void generateMusic() {
    beatlist.forEach((beat) {
      String newmusic = "";
      if (beat == 0) {
        throw new FormatException("Zero is invalid");
      }
      if (_isdivisible(num: beat, by: 3)) {
        newmusic += "Pling";
//         print("divisible by 3");
      }
      if (_isdivisible(num: beat, by: 5)) {
        newmusic += "Plang";
//         print("divisible by 5");
      }
      if (_isdivisible(num: beat, by: 7)) {
        newmusic += "Plong";
//         print("divisible by 7");
      }
      if (newmusic == "") {
        newmusic += beat.toString();
      }

      musiclist.add(newmusic);
//       print(newmusic);
    });
  }
}

void main() {
  List<int> list1 = [55, 76, 49, 70, 15, 0];
  List<int> list2 = [55, 76, 49, 70, 15];

  print("SONG 1");
  try {
    var obj = new MusicDrop(list1);
    List<String> music = obj.musiclist;
    music.forEach((m) => print(m));
  } catch (exception) {
    print(exception.toString());
  }
  print("SONG 2");
  try {
    var obj = new MusicDrop(list2);
    List<String> music = obj.musiclist;
    music.forEach((m) => print(m));
  } catch (exception) {
    print(exception.toString());
  }
}
```

# Output

```bash
SONG 1
FormatException: Zero is invalid
SONG 2
Plang
76
Plong
PlangPlong
PlingPlang
```

# Task

Create a class location with integer attributes of latitude and longitude and a Boolean attribute which represents whether person has visited this location or not. Create a function in class that finds distance between two points but first checks if both the locations are marked visited. Incase both marked not visited or any one of them marked not visited the function should throw an exception saying “location not visited, aborting…” else the program should calculate the distance and display it.

# Code

```dart
import 'dart:math';

class CustomException implements Exception {
  String message;
  CustomException(this.message);

  @override
  String toString() {
    return 'CustomException : $message';
  }
}

class Location extends Point {
  bool isVisited;

  Location({int longitude, int latitude, this.isVisited})
      : super(latitude, longitude);

  double distance(Location point) {
    // if both visited
    // calculate distance
    // else throw error
    // location not visited, aborting…
    if (this.isVisited && point.isVisited) {
      return sqrt(pow((this.x - point.x), 2) + pow((this.y - point.y), 2));
    } else {
      throw new CustomException("location not visited, aborting…");
    }
  }
}

void main() {
  var loc1 = new Location(latitude: 20, longitude: 30, isVisited: false);
  var loc2 = new Location(latitude: 30, longitude: 40, isVisited: false);
  var loc3 = new Location(latitude: 40, longitude: 50, isVisited: true);
  var loc4 = new Location(latitude: 50, longitude: 60, isVisited: true);

  try {
    // false , false
    var d = loc1.distance(loc2);
    print(d);
  } catch (e) {
    print(e.toString());
  }

  try {
    // false , true
    var d = loc1.distance(loc3);
    print(d);
  } catch (e) {
    print(e.toString());
  }

  try {
    // true, false
    var d = loc3.distance(loc2);
    print(d);
  } catch (e) {
    print(e.toString());
  }

  try {
    // true, true
    var d = loc3.distance(loc4);
    print(d);
  } catch (e) {
    print(e.toString());
  }
}
```

# Output

```bash
CustomException : location not visited, aborting…
CustomException : location not visited, aborting…
CustomException : location not visited, aborting…
14.142135623730951
```
