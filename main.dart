import 'package:flutter/material.dart';
import 'routes.dart';
import 'firstpage.dart';
import 'secpage.dart';
// import 'thirdpage.dart';
import 'fourthpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Tutoring System',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        initialRoute: Routes.firstPage,
        routes: {
          Routes.firstPage: (context) => const FirstPage(),
          Routes.secPage: (context) => const SecPage(),
          // Routes.thirdPage: (context) => const ThirdPage(),
          Routes.fourthPage: (context) => const FourthPage(),
        });
  }
}
