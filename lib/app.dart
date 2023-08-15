import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.light(),
        home: const Scaffold(
          body: Center(
            child: Text('Hello world'),
        ),
      ),
    );
  }
}
