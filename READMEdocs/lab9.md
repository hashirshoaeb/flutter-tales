# Task

A Caesar Cipher is an incredibly simple form of encryption. Each letter in a message is substituted with another letter a certain number of alphabet positions away from it. It is named after the great Roman leader Julius Caesar, who purportedly used it in his correspondence. One example: Caesar Cipher may replace each letter with another letter three places ahead in the alphabet, so that A becomes D, F becomes I, etc. A popular Caesar Cipher is ROT13, which is a movement of 13 letters (one-half the English alphabet).

Write a function that have a English alphabet as a List and uses it to form a Map with the original letters as keys and the substitution letters as values. It indexes into the alphabet List and moves 13 letters forward, for the first 13 letters (a–m), and 13 letters backward, for the rest of the alphabet (n–z).

# Code

```dart
Map createCaesarCipherMap(List list, int shift) {
  Map map = new Map();
  for (int i = 0; i < list.length; i++) {
    map[list[i]] = list[(i + 13) % list.length];
  }
  return map;
}

void main() {
  List alphabets = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    'j',
    'k',
    'l',
    'm',
    'n',
    'o',
    'p',
    'q',
    'r',
    's',
    't',
    'u',
    'v',
    'w',
    'x',
    'y',
    'z'
  ];

  Map map = createCaesarCipherMap(alphabets, 13);
  print(map);
}
```

# Output

```bash
{a: n, b: o, c: p, d: q, e: r, f: s, g: t, h: u, i: v, j: w, k: x, l: y, m: z, n: a, o: b, p: c, q: d, r: e, s: f, t: g, u: h, v: i, w: j, x: k, y: l, z: m}
```

# Task

Given a phrase, count the occurrences of each word in that phrase.
For the purposes of this exercise you can expect that a word will always be one of:

1. A number composed of one or more ASCII digits (ie "0" or "1234") OR
2. A simple word composed of one or more ASCII letters (ie "a" or "they") OR
3. A contraction of two simple words joined by a single apostrophe (ie "it's" or "they're")

When counting words you can assume the following rules:

1. The count is case insensitive (ie "You", "you", and "YOU" are 3 uses of the same word)
2. The count is unordered; the tests will ignore how words and counts are ordered
3. Other than the apostrophe in a contraction all forms of punctuation are ignored
4. The words can be separated by any form of whitespace (ie "\t", "\n", " ")

For example, for the phrase "That's the password: 'PASSWORD 123'!", cried the Special Agent.\nSo I fled. the count would be:

```
that's: 1
the: 2
password: 2
123: 1
cried: 1
special: 1
agent: 1
so: 1
i: 1
fled: 1
```

# Code

```dart
class WordCount {
  final Map<String, int> _map = new Map<String, int>();

  Map<String, int> get map {
    return _map;
  }

  WordCount(String sentence) {
    _count(sentence);
  }

  void _count(String sentence) {
    // preprocessing
    String phrase = sentence.toLowerCase();
    // considering word characters and numbers only
    RegExp exp = new RegExp(r"[a-zA-Z0-9_]+(\'[a-zA-Z0-9_]+)?");
    // creating map
    exp.allMatches(phrase).forEach((RegExpMatch match) {
      String word = match.group(0);
      if (_map.containsKey(word))
        _map[word] += 1;
      else
        _map[word] = 1;
    });
  }

  @override
  String toString() {
    String data = "";
    data += "{\n";
    map.forEach((k, v) => data += "  $k: $v \n");
    data += "}";
    return data;
  }
}

void main() {
  String phrase =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellu's faucibus tempor massa, ac dignissim 1234 gravida in. Phasellu's facilisis pretium ipsum ac 02343546. Suspendisse nulla erat, fringilla in dictum non, molestie vitae enim. Proin congue augue et lacus consectetur, sit amet ornare leo porttitor. Morbi ac diam vitae nulla sodales sollicitudin. Donec a leo \"mauris\". Maecenas semper, nulla eget blandit lobortis, urna erat varius nulla, ac pellentesque metus odio eu augue.";
​
  WordCount obj = new WordCount(phrase);
  print(obj.toString());
}
​
```

# Output

```bash
{
  lorem: 1
  ipsum: 2
  dolor: 1
  sit: 2
  amet: 2
  consectetur: 2
  adipiscing: 1
  elit: 1
  phasellu's: 2
  faucibus: 1
  tempor: 1
  massa: 1
  ac: 4
  dignissim: 1
  1234: 1
  gravida: 1
  in: 2
  facilisis: 1
  pretium: 1
  02343546: 1
  suspendisse: 1
  nulla: 4
  erat: 2
  fringilla: 1
  dictum: 1
  non: 1
  molestie: 1
  vitae: 2
  enim: 1
  proin: 1
  congue: 1
  augue: 2
  et: 1
  lacus: 1
  ornare: 1
  leo: 2
  porttitor: 1
  morbi: 1
  diam: 1
  sodales: 1
  sollicitudin: 1
  donec: 1
  a: 1
  mauris: 1
  maecenas: 1
  semper: 1
  eget: 1
  blandit: 1
  lobortis: 1
  urna: 1
  varius: 1
  pellentesque: 1
  metus: 1
  odio: 1
  eu: 1
}
```
