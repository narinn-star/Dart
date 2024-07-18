// #4.0 Your First Dart class
// #4.1 Constructors
// #4.2 Named Constructor Parameters
// #4.3 Named Constructors
// #4.4 Recap ❗️
// #4.5 Cascade Notation
// #4.6 Enums
// #4.7 Abstract Classes
// #4.8 Inheritance
// #4.9 Mixins
// #4.10 Conclusions

class Player {
  final String name;
  int xp;
  String team;

  Player.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'],
        xp = playerJson['xp'],
        team = playerJson['team'];

  void sayHello() {
    print(
        "Hi my name is $name"); // this 사용할 필요 없음 (this를 붙여도 되지만, class method 내에서는 this를 사용하지 않는 것을 권고)
  }
}

void main() {
  var apiData = [
    {
      "name": "David",
      "team": "red",
      "xp": 0,
    },
    {
      "name": "lynn",
      "team": "red",
      "xp": 0,
    },
    {
      "name": "Bob",
      "team": "red",
      "xp": 0,
    }
  ];

  apiData.forEach((playerJson) {
    var player = Player.fromJson(playerJson);
    player.sayHello();
//     Hi my name is David
//     Hi my name is lynn
//     Hi my name is Bob
  });
}
