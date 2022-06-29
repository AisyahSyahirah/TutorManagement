import 'package:flutter/material.dart';
import 'routes.dart';
import 'tutor.dart';

class FourthPage extends StatefulWidget {
  const FourthPage({Key? key}) : super(key: key);

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  void _showDialog(String fname, ic, no, mail, sub) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title:
              new Text("Confirm your submission", textAlign: TextAlign.center),
          content: new Text('$fname,$ic, $no, $mail, $sub'),
          actions: <Widget>[
            new TextButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    tutor Tutor = ModalRoute.of(context)!.settings.arguments as Tutor;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Application form to become a tutor'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(15),
              alignment: Alignment.centerLeft,
              child: Text('Full name  : ${Tutor.fullname}'),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.all(15),
              child: Text('IC number : ${Tutor.icno}'),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.all(15),
              child: Text('Contact number  : ${Tutor.contactno}'),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.all(15),
              child: Text('Email  : ${Tutor.email}'),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.all(15),
              child: Text('Subject offered  : ${Tutor.subject}'),
            ),
            Container(
                margin: const EdgeInsets.all(20),
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Submit'),
                )),
          ],
        ),
      ),
    );
  }
}
