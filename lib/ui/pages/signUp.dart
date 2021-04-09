import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: camel_case_types
class signUpPage extends StatefulWidget {
  @override
  _signUpPageState createState() => _signUpPageState();
}

class _signUpPageState extends State<signUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text('Sign Up'),
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
                cursorColor: Theme.of(context).cursorColor,
                decoration: InputDecoration(
                  hintText: 'Name',
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF6200EE)),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  filled: true,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
                cursorColor: Theme.of(context).cursorColor,
                decoration: InputDecoration(
                  hintText: 'Enter email',
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF6200EE)),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  filled: true,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
                cursorColor: Theme.of(context).cursorColor,
                decoration: InputDecoration(
                  hintText: 'Enter password',
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF6200EE)),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  filled: true,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
                cursorColor: Theme.of(context).cursorColor,
                decoration: InputDecoration(
                  hintText: 'Confirm password',
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF6200EE)),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  filled: true,
                )),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.all(30),
            height: MediaQuery.of(context).size.height * 0.08,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  side: BorderSide(color: Colors.lightBlue)),
              onPressed: () {
                print("Sign Up Button Pressed");
              },
              padding: EdgeInsets.all(10.0),
              color: Colors.lightBlue,
              textColor: Colors.white,
              child: Text("Sign Up", style: TextStyle(fontSize: 16)),
            ),
          ),
        ]));
  }
}

class MyAlert {}
