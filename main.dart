import 'package:flutter/material.dart';
import 'routes.dart';
import 'firstpage.dart';
import 'secpage.dart';
import 'thirdpage.dart';
import 'fourthpage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // Replace with actual values
    options: FirebaseOptions(
      apiKey: "",
      appId: "1:900013555509:android:48cac1837807088859d67c",
      messagingSenderId: "900013555509",
      projectId: "tutoring-management-system",
    ),
  );
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
          Routes.thirdPage: (context) => const ThirdPage(),
          Routes.fourthPage: (context) => const FourthPage(),
        });
  }
}

