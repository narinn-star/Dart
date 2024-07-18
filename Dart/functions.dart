// #3.0 Defining a Function
// #3.1 Named Parameters
// #3.2 Recap
// #3.3 Optional Positional Parameters
// #3.4 QQ Operator
// #3.5 Typedef

void sayHello(String name) {
  print("Hello $name nice to meet you");
}

String sayHello2(String name) {
  return "Hello $name nice to meet you";
}

String sayHello3(String name) => "Hello $name nice to meet you";

num plus(num a, num b) => a + b; // 바로 리턴할 때는 arrow function을 사용하면 된다.

String sayHello4(
    {String name = 'Brian', int age = 13, String country = 'America'}) {
  // Null Safety때문에 default 값을 지정하면 오류가 나지 않음
  return "Hello $name, you are $age, and you come from $country";
}

String sayHello5({required name, required int age, required String country}) {
  // required를 명시해주면 함수 호출 시 반드시 세 값을 가져야함을 뜻함.
  return "Hello $name, you are $age, and you come from $country";
}

String sayHello6(name, int age, [String? country = 'Cuba']) =>
    // 선택적으로 사용하고 싶은 파라미터는 ?로 표시하고, default value도 정해준다.
    "Hello $name, you are $age, and you come from $country";

String capitalizeName(String? name) =>
    name != null ? name.toUpperCase() : 'ANON';
// name.toUpperCase() ?? 'ANON';

typedef ListOfInts = List<int>;

ListOfInts reverseListOfNumbers(List<int> list) {
  var reversed = list.reversed;
  return reversed.toList();
}

typedef UserInfo = Map<String, String>;

String sayHi(UserInfo userInfo) {
  return "Hi ${userInfo['name']}";
}

void main() {
  print(sayHello2("aaa")); // Hello aaa nice to meet you
  sayHello("abc"); // Hello abc nice to meet you
  print(sayHello3("cba")); // Hello cba nice to meet you

  //sayHello4("bbb", 19, "korea"); // 각 파라미터가 어떤 걸 의미하는 지 바로 알기 어려움 => named parameters사용
  print(sayHello4(
      age: 12,
      country: 'Canada',
      name: "Bob")); // Hello Bob, you are 12, and you come from Canada
  print(
      sayHello4(age: 12)); // Hello Brian, you are 12, and you come from America

  // print(sayHello5()); // 오류, required를 명시해둔 파라미터가 들어가지 않음
  print(sayHello5(
      name: 'Amy', age: 18, country: 'NewYork')); // 자동으로 입력하게끔 완성이 된다.

  print(
      sayHello6('name', 18)); // Hello name, you are 18, and you come from Cuba

  print(capitalizeName('Mina')); // MINA
  print(capitalizeName(null)); // ANON

  String? name;
  name ??= 'Soo'; // If name is null, put a value inside of it.
  name = null;
  name ??= 'Another'; // If name is null, put a value inside of it.
  print(name); // Another

  print(reverseListOfNumbers([1, 2, 3])); // [3, 2, 1]
  sayHi({"fadfadf": "nico"});
}
