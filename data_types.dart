// #2.0 Basic Data Types
// #2.1 Lists
// #2.2 String Interpolation
// #2.3 Collection For
// #2.4 Maps
// #2.5 Sets

void main() {
  String name = 'name';
  bool alive = true;
  int age = 12;
  double money = 23.99;

  num x = 12;
  x = 1.1;
  // int, double이 num을 상속받은 클래스기 때문에, num은 둘 다 선언 가능하다.

  var numbers = [1, 2, 3, 4]; // List<int>
  List<int> numbers2 = [
    1,
    2,
    3,
    4,
  ]; // 위와 동일
  numbers.add(6); // int형만 추가 가능

  var giveMeFive = true;
  var n = [
    1,
    2,
    3,
    4,
    if (giveMeFive) 5,
  ];
  print(n); // [1, 2, 3, 4, 5]

  var myName = 'name';
  var myAge = 10;
  var greeting = 'hello, my name is $name, nice to meet you!';
  print(greeting); // hello, my name is name, nice to meet you!
  var greeting2 = "hello, my name is $name and I'm ${myAge + 2}";
  print(greeting2); // hello, my name is name, and I'm 12

  var oldFriends = ['bob', 'diana'];
  var newFriends = [
    'brian',
    'amy',
    'lynn',
    for (var friend in oldFriends) "🫶🏻$friend",
  ];
  print(newFriends); // [brian, amy, lynn, 🫶🏻bob, 🫶🏻diana]

  var player = {
    'name': 'name',
    'xp': 19.99,
    'superpower': false,
  }; // Object == any라 생각하면 쉽다.

  Map<int, bool> player2 = {
    1: true,
    2: false,
    3: true,
  };

  Map<List<int>, bool> player3 = {
    [1, 2, 3, 5]: true,
  };

  List<Map<String, Object>> players = [
    {'name': 'name', 'xp': 199993.999},
    {'name': 'name2', 'xp': 199993.998}
  ];

  var numbers3 = {1, 2, 3, 4}; // Set 선언 끝!
  Set<int> numbers4 = {1, 2, 3, 4}; // 위와 동일

  numbers4.add(1);
  print(numbers4); // {1, 2, 3, 4}

  List<int> numbers5 = [1, 2, 3, 4];
  numbers5.add(1);
  print(numbers5); // [1, 2, 3, 4, 1];
}
