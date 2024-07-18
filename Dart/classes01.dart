// #4.0 Your First Dart class ❗️
// #4.1 Constructors
// #4.2 Named Constructor Parameters
// #4.3 Named Constructors
// #4.4 Recap
// #4.5 Cascade Notation
// #4.6 Enums
// #4.7 Abstract Classes
// #4.8 Inheritance
// #4.9 Mixins
// #4.10 Conclusions

// 클래스를 생성할 때는 타입을 꼭 명시해주어야 함
class Player {
  final String name = 'Amy';
  int xp = 1500;

  void sayHello() {
    print(
        "Hi my name is $name"); // this 사용할 필요 없음 (this를 붙여도 되지만, class method 내에서는 this를 사용하지 않는 것을 권고)
  }
}

void main() {
  // 객체 생성
  var player = Player(); // new를 붙이지 않아도 됨 (붙일 순 있지만 필수가 아님)
  print(player.name); // Amy
  // final을 붙이지 않으면
  // player.name = 'adfadf';
  // print(player.name); // adfadf
  player.sayHello(); // Hi my name is Amy
}
