# Task:

We will build a superhero simulation app several different super heroes and they'll get their super powers. We have three superHeros i.e. Hulk, IronMan and SpiderMan. Hulk likes to jump and smash things whereas Iron Man likes to fly and shoot lasers.
But super hero powers like jumping and flying are traits shared by other super heroes.

For example Spiderman is a jumper and Superman flies as well. So it makes sense to break out the implementation of these powers. Some heroes have the ability to heal quickly. Some heroes can bench press a car, strength is their forte. This mixin holds our implementation of strength. Having a strong grasp on technology as laser beams can help heroes get out of a tight spot and win the day.
Create a small Dart console app to instantiate the heroes and let them do their thing and save the world.

# Code:

```dart
// Hulk, IronMan and SpiderMan
// Hulk likes to jump and smash things
// Iron Man likes to fly and shoot lasers.
// Spiderman is a jumper and Superman flies as well.

mixin Jumping {
  void jump() {
    print("jump");
  }
}

mixin Smashing {
  void smash() {
    print("smash");
  }
}

mixin Flying {
  void fly() {
    print("fly");
  }
}

mixin Shooting {
  void shoot() {
    print("shoot");
  }
}

class IronMan with Flying, Shooting {
  IronMan(){
    fly();
    shoot();
  }
}

class Hulk with Jumping, Smashing {
  Hulk(){
    jump();
    smash();
  }
}

class SpiderMan with Jumping, Flying {
  SpiderMan(){
    jump();
    fly();
  }
}

void main(){
  IronMan obj = new IronMan();
  Hulk obj1 = new Hulk();
}

```

# Output:

```bash
fly
shoot
jump
smash
```

# Task:

Think of situations in which mixins make more sense than a traditional
class hierarchy (using extends). Write a few lines describing your scenario and implement it?
(additional marks will be given for creativity)

# Explanation:

There are many mark-up languages with different syntaxes, like html, latex, xml, and markdown. Below algorithm can write heading and paragraph in html and markdown format.

# Code:

```dart
mixin Markup {
  void paragraph(String data) {}
  void heading(String data) {}
}

class Html with Markup {
  String doc = "";
  @override
  void paragraph(String data) {
    doc = doc + "<p> $data </p> \n";
  }

  @override
  void heading(String data) {
    doc = doc + "<h1> $data </h1> \n";
  }

  @override
  String toString() {
    return this.doc;
  }
}

class Markdown with Markup {
  String doc = "";

  @override
  void paragraph(String data) {
    doc = doc + "\n $data \n";
  }

  @override
  void heading(String data) {
    doc = doc + "# $data \n";
  }

  @override
  String toString() {
    return this.doc;
  }
}

void main() {
  Html htmlDoc = new Html()
    ..heading("Html Heading")
    ..paragraph("This is html syntax");
  print(htmlDoc.toString());

  Markdown mdDoc = new Markdown()
    ..heading("Markdown Heading")
    ..paragraph("This is markdown syntax");
  print(mdDoc.toString());
}
```

# Output:

```html
<h1>Html Heading</h1>
<p>This is html syntax</p>
```

```md
# Markdown Heading

This is markdown syntax
```
