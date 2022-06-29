import 'package:flutter/material.dart';
import 'routes.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TUTOR LIST'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: <Widget>[
              Container(
                child: Text('Name: \n Subjects offered: \n Contact number: '),
                color: Colors.blue,
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.all(20.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
