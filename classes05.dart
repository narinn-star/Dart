// #4.0 Your First Dart class
// #4.1 Constructors
// #4.2 Named Constructor Parameters
// #4.3 Named Constructors
// #4.4 Recap
// #4.5 Cascade Notation
// #4.6 Enums
// #4.7 Abstract Classes
// #4.8 Inheritance❗️
// #4.9 Mixins
// #4.10 Conclusions

class Human {
  final String name;

  Human({required this.name});

  void sayHello() {
    print("Hi my name if $name");
  }
}

enum Team { blue, red }

class Player extends Human {
  final Team team;

  Player({
    required this.team,
    required String name,
  }) : super(name: name);

  @override
  void sayHello() {
    // TODO: implement sayHello
    super.sayHello();
    print("and I play for ${team}");
  }
}

void main() {
  var player = Player(team: Team.red, name: 'David');
}
