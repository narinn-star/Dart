// #4.0 Your First Dart class
// #4.1 Constructors
// #4.2 Named Constructor Parameters
// #4.3 Named Constructors
// #4.4 Recap
// #4.5 Cascade Notation
// #4.6 Enums
// #4.7 Abstract Classes
// #4.8 Inheritance
// #4.9 Mixins❗️
// #4.10 Conclusions❗️

// Mixins : 생성자가 없는 클래스로, 클래스에 프로퍼티들을 추가하거나 할 때 사용한다.

mixin class Strong {
  final double strengthLevel = 1500.99;
}

mixin class QuickRunner {
  void runQuick() {
    print("ruuuuuuuun!");
  }
}

mixin class Tall {
  final double height = 1.99;
}

enum Team { blue, red }

class Player with Strong, QuickRunner, Tall {
  final Team team;

  Player({
    required this.team,
  });
}

class Horse with Strong, QuickRunner {}

class Kid with QuickRunner {}

void main() {
  var player = Player(team: Team.red);

  player.runQuick();
}
