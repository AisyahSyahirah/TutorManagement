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
   
  var fullname;
  var icno;
  var contactno;
  var email;
  var subject;
  var id;

  void _setfullname(String text) {
    setState(() {
      fullname = text;
      id = fullname;
    });
  }

  void _seticno(String text) {
    setState(() {
      icno = text;
    });
  }

  void _setcontactno(String text) {
    setState(() {
      contactno = text;
    });
  }

  void _setemail(String text) {
    setState(() {
      email = text;
    });
  }

  void _setsubject(String text) {
    setState(() {
      subject = text;
    });
  }

  void _create() async{
    try {
      await firestore.collection('name').doc(id).set({
        'fullname': fullname,
        'icno': icno,
        'contactno': contactno,
        'email': email,
        'subject' : subject,
      });
    }
    catch(e){
      print (e);
    }
  }

  void _showDialog(String fname, ic, no, mail, sub) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text("TUTOR DETAILS", textAlign: TextAlign.center),
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

  Widget build(BuildContext context) { 
    return Form(  
      key: _formKey,  
      child: Column(  
        crossAxisAlignment: CrossAxisAlignment.start,  
        children: <Widget>[ 
          new Text("Application form to become a tutor", textAlign: TextAlign.center),
          Padding(
            padding: EdgeInsets.all(8),
            child:TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Full name',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '';
                    }
                    return null;
                  }, 
                  onChanged: (text) {
                    _setfullname(text);
                  },
                  keyboardType: TextInputType.number,
                )),

          Padding(  
             padding : EdgeInsets.all(8),
             child: TextFormField(
                    decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'IC number',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '';
                    }
                    return null;
                  }, 
                  onChanged: (text) {
                    _seticno(text);
                  },
                  keyboardType: TextInputType.number,
                )), 

                Padding(
            padding: EdgeInsets.all(8),
            child:TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Contact number',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '';
                    }
                    return null;
                  }, 
                  onChanged: (text) {
                    _setcontactno(text);
                  },
                  keyboardType: TextInputType.number,
                )),

                Padding(
            padding: EdgeInsets.all(8),
            child:TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '';
                    }
                    return null;
                  }, 
                  onChanged: (text) {
                    _setemail(text);
                  },
                  keyboardType: TextInputType.number,
                )),

                Padding(
            padding: EdgeInsets.all(8),
            child:TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Subject offered',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '';
                    }
                    return null;
                  }, 
                  onChanged: (text) {
                    _setsubject(text);
                  },
                  keyboardType: TextInputType.number,
                )),

            Padding(
            padding: const EdgeInsets.all(8),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _create();
                }
              },
              child: const Text('Submit'),
              )
            ) , 
        ], 
      ),  
    );  
  }  
}  

