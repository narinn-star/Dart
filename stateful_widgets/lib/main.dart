import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  // List<int> numbers = [];

  // void onClicked() {
  //   setState(() {
  //     numbers.add(numbers.length);
  //   });
  // }

  // int counter = 0;

  // void onClicked() {
  //   setState(() {
  //     counter = counter + 1;
  //   });
  // 아래처럼 작성해도 되지만, 명확성을 위해 위처럼 작성하쟈
  // counter = counter + 1;
  // setState(() {});
  //}

  bool showTitle = true;

  void toggleTitle() {
    setState(() {
      showTitle = !showTitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              showTitle ? const MyLargeTitle() : const Text('nothing'),
              IconButton(
                  onPressed: toggleTitle,
                  icon: const Icon(Icons.remove_red_eye))
              // Text(
              //   'Click Count',
              //   style: TextStyle(
              //     fontSize: 30,
              //   ),
              // ),
              // for (var n in numbers) Text('$n'),
              // Text(
              //   '$counter',
              //   style: const TextStyle(
              //     fontSize: 30,
              //   ),
              // ),
              // IconButton(
              //     iconSize: 40,
              //     onPressed: onClicked,
              //     icon: const Icon(Icons.add_box_rounded))
            ],
          ),
        ),
      ),
    );
  }
}

class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  // 부모 요소에 의존하는 데이터 초기화 (API ... (useEffect느낌인가 근데 dependency는 없는 ..))
  @override
  void initState() {
    super.initState();
    print('initState');
  }

  // 위젯이 스크린에서 제거될 때 (무언가  취소하고싶을 때..?)
  @override
  void dispose() {
    super.dispose();
    print('dispose');
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Text(
      'Large Title',
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context).textTheme.titleLarge?.color,
      ),
    );
  }
}
