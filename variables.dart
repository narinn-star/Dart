// #1.0 Hello World
// #1.1 The Var Keyword
// #1.2 Dynamic Type
// #1.3 Nullable Variables
// #1.4 Final Variables
// #1.5 Late Variables
// 1.6 Constant Variables
// 1.7 Recap

//dart에서는 main()이 필수
void main() {
  print('hello world'); // 세미콜론을 일부러 붙이지 않는 경우도 있기 때문에 formatter에서 자동으로 붙여주지 않음

  var name = '이름'; // var로 선언해도 뒤에 할당되는 값의 형태에 따라 자동으로 타입이 지정됨
  String name2 = '이름2'; // var 대신 타입을 지정해줘도 됨

  var name3; // 아무것도 할당하지 않으면 dynamic 타입
  dynamic dynamicName; // 위와 같음

  // 형식이 지정되어 있지 않기 때문에 아래처럼 자료형을 확인해서 처리할 수 있음
  // 정말 필요할 때만 쓰자.
  if (dynamicName is String) {}
  if (dynamicName is int) {}

  String nullName = 'name';
  // nullName = null; // String만 들어가야하기 때문에 오류
  String? nullName2 = 'name'; // nullable
  nullName2 = null;

  if (nullName2 != null) {
    // nullable이기 때문에 사용 전에 확인해주기!
    nullName2.isNotEmpty; //
  }

  nullName2?.isNotEmpty; // 위의 조건식과 같음

  final finalName = 'name'; // final String finalName = '';처럼 형식을 지정해줄 수 있음
  // finalName = 'name2'; // 상수 선언이므로, 변경할 수 없음

  late final String lateName; // 아무것도 할당하지 않아도 선언할 수 있다.
  // do something, go to api ...
  // pirnt(lateName); // 아직 할당된 값이 없기 때문에 할당 이전에 접근할 수 없음
  lateName = 'lateName';
  print(lateName);

  const constName = 'name'; // final처럼 수정이 안됨
  // const API = fetchApi(); // 컴파일 할 때 알고 있는 값에 사용
}
