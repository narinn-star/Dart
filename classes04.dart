// #4.0 Your First Dart class
// #4.1 Constructors
// #4.2 Named Constructor Parameters
// #4.3 Named Constructors
// #4.4 Recap
// #4.5 Cascade Notation❗️
// #4.6 Enums❗️
// #4.7 Abstract Classes❗️
// #4.8 Inheritance
// #4.9 Mixins
// #4.10 Conclusions

abstract class Human {
  void walk();
}

enum Team { red, blue }

enum XPLevel { beginner, medium, pro }

class Player extends Human {
  String name;
  XPLevel xp;
  Team team;

  Player({
    required this.name,
    required this.xp,
    required this.team,
  });

  void walk() {
    print("i'm walking");
  }

  void sayHello() {
    print(
        "Hi my name is $name"); // this 사용할 필요 없음 (this를 붙여도 되지만, class method 내에서는 this를 사용하지 않는 것을 권고)
  }
}

class Coach extends Human {
  void walk() {
    print("the coach is walking");
  }
}

void main() {
  // Cascade Operator
  var p = Player(name: "David", xp: XPLevel.medium, team: Team.red)
    ..name = 'las'
    ..xp = XPLevel.pro
    ..team = Team.blue;
  // 아래 세줄과 동일
  // p.name = 'las';
  // p.xp = 1200000;
  // p.team = 'blue';

  // 아래처럼 나중에 쓸 수도 있음
  var potato = p
    ..name = 'las'
    ..xp = XPLevel.pro
    ..team = Team.blue
    ..sayHello();
}
