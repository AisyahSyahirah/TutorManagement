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
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          Routes.secPage,
                        );
                      })),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextFormField(
                      //controller: weightController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Admin password',
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
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SecPage()),
                              );
                            }
                          }),
                    ),
                  ],
                ),
              )
            ]),
      )),
    );
  }
}
