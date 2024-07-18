// #4.0 Your First Dart class
// #4.1 Constructors ❗️
// #4.2 Named Constructor Parameters ❗️
// #4.3 Named Constructors ❗️
// #4.4 Recap
// #4.5 Cascade Notation
// #4.6 Enums
// #4.7 Abstract Classes
// #4.8 Inheritance
// #4.9 Mixins
// #4.10 Conclusions

// 클래스를 생성할 때는 타입을 꼭 명시해주어야 함
class Player {
  // late final String name; // late : 나중에 받아올 것이라는 걸 명시
  // late int xp;

  // Player(String name, int xp) {
  //   this.name = name;
  //   this.xp = xp;
  // }

  // 위의 생성자와 아래와 동일함
  final String name;
  int xp, age;
  String team;

  //Player(this.name, this.xp, this.team, this.age); // 이렇게 쓰면 위치가 중요
  Player({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  }); // named constructor parameter => null safety때문에 required가 필요

  Player.createBluePlayer({
    required String name,
    required int age,
  })  : this.age = age, // 콜론 : Initialize
        this.name = name,
        this.team = 'blue',
        this.xp = 0;

  Player.createRedPlayer(String name, int age)
      : this.age = age,
        this.name = name,
        this.team = 'red',
        this.xp = 0;

  void sayHello() {
    print(
        "Hi my name is $name"); // this 사용할 필요 없음 (this를 붙여도 되지만, class method 내에서는 this를 사용하지 않는 것을 권고)
  }
}

void main() {
  // var player = Player("lynn", 2500, 'red', 12);
  // player.sayHello(); // Hi my name is lynn
  // var player2 = Player("David", 1500, 'blue', 12);
  // player2.sayHello(); // Hi my name is David

  var player = Player(name: "lynn", xp: 2500, team: "red", age: 21);
  player.sayHello(); // Hi my name is lynn
  var player2 = Player(name: "David", xp: 1500, team: "blue", age: 12);
  player2.sayHello(); // Hi my name is David

  var bluePlayer = Player.createBluePlayer(name: 'David', age: 12);
  var redPlayer = Player.createRedPlayer("lynn", 21);
}
