import 'package:flutter/material.dart';
import 'routes.dart';


class SecPage extends StatefulWidget {
  const SecPage({Key? key}) : super(key: key);

  @override
  State<SecPage> createState() => _SecPageState();
}

class _SecPageState extends State<SecPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOMEPAGE'),
      ),
      body: Center(
          child: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                child: Text('TUTORING MANAGEMENT SYSTEM',
                style: TextStyle(color: Colors.black)),
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.all(10.0),
              ),
            Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                    child: const Text('VIEW TUTOR LIST'),
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        Routes.thirdPage,
                      );
                    })),
            Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                    child: const Text('BECOME A TUTOR'),
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        Routes.fourthPage,
                      );
                    })),
          ],
        ),
      )),
    );
  }
}