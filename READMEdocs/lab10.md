# Task

Determine if a sentence is a pangram. A pangram (Greek: παν γράμμα, pan gramma, "every letter") is a sentence using every letter of the alphabet at least once. The best known English pangram is:

**The quick brown fox jumps over the lazy dog.**

The alphabet used consists of ASCII letters a to z, inclusive, and is case insensitive. Input will not contain non-ASCII symbols.

# Code

```dart
bool checkPangram(String phrase) {
  Set<String> phraseSet = new Set<String>();

  phrase.runes.forEach((int rune) {
    final String character = new String.fromCharCode(rune);
    final RegExp alphabet = RegExp('[a-zA-Z]');
    if (alphabet.hasMatch(character)) {
      phraseSet.add(character.toLowerCase());
    }
  });

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
  Set<String> alphabetSet = new Set.from(alphabets);

//   print(phraseSet.toString());
//   print(alphabetSet.toString());
//   print(alphabetSet.difference(phraseSet).toString());
  if (alphabetSet.difference(phraseSet).isEmpty) {
    return true;
  } else {
    return false;
  }
}

void main() {
  String phrase = "The quick brown fox jumps over the lazy dog.";
  bool response = checkPangram(phrase);
  if (response){
    print( "'$phrase' is Pangram.");
  }
  else{
    print("NOT Pangram.");
  }
}
```

# Output

```bash
    'The quick brown fox jumps over the lazy dog.' is Pangram.
```
