import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:twitter_clone_flutter/ui/pages/homePage.dart';
import 'package:twitter_clone_flutter/ui/pages/forgotPassword.dart';

class loginPage extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text('Sign In'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
                cursorColor: Theme.of(context).cursorColor,
                maxLength: 20,
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
                obscureText: _obscureText,
                cursorColor: Theme.of(context).cursorColor,
                decoration: InputDecoration(
                  hintText: 'Enter password',
                  suffixIcon: IconButton(
                      icon: Icon(Icons.remove_red_eye_rounded),
                      splashRadius: 25,
                      onPressed: _toggle),
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              padding: EdgeInsets.all(10.0),
              color: Colors.lightBlue,
              textColor: Colors.white,
              child: Text("Login", style: TextStyle(fontSize: 16)),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => forgotPasswordPage()),
              );
            },
            child: Text(
              "Forgot password?",
              style: TextStyle(color: Colors.lightBlue),
            ),
          ),
        ],
      ),
    );
  }
}
