```dart
// 1. Constructor
// 2. Named Constructor
// 3. Setters
// 4. Getters
// 5. ApplyBrake (decrement speed)
// 6. Accelerate (increment speed)
// . A main()

class Bicycle {
  double speed;
  int gear;

  set bGear(int gear){
    this.gear = gear;
  }
  int get bGear{
    return this.gear;
  }

  set bSpeed(double speed){
    this.speed = speed;
  }
  double get bSpeed{
    return this.speed;
  }

  Bicycle({this.gear, this.speed});

  void applyBrake (int decrement){
    this.speed = this.speed - decrement;
  }
  void accelerate(int increment){
    this.speed = this.speed + increment;
  }
}

void main(){
  Bicycle mybicycle = new Bicycle(gear: 1, speed:5);
  print(mybicycle.bSpeed);
  print(mybicycle.bGear);
  mybicycle.accelerate(9);
  print(mybicycle.bSpeed);
}
```
