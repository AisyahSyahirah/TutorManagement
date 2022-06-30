import 'package:flutter/material.dart';
import 'package:tutorsystem/secpage.dart';
import 'routes.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final _formKey = GlobalKey<FormState>();

  void _adminlogin() {
    _showDialog();
  }

  void _showDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text("Login for Admin", textAlign: TextAlign.center),
            actions: <Widget>[
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    //controller: weightController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                    },
                  ),
                  TextFormField(
                    //controller: weightController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ElevatedButton(
                        child: const Text('Submit'),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.pushNamed(
                              context,
                              Routes.secPage,
                            );
                          }
                        }),
                  )
                ],
              ))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LOGIN'),
      ),
      body: Center(
          child: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Text('APPLICATION NAME'),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.purple),
                padding: EdgeInsets.all(70.0),
                margin: EdgeInsets.all(15.0),
              ),
              Padding(
                  padding: const EdgeInsets.all(20),
                  child: ElevatedButton(
                      child: const Text('Continue as guest'),
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          Routes.secPage,
                        );
                      })),
              Padding(
                  padding: const EdgeInsets.all(20),
                  child: ElevatedButton(
                      child: const Text('Login for admin'),
                      onPressed: _adminlogin)),
            ]),
      )),
    );
  }
}

