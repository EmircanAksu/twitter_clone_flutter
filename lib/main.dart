import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:twitter_clone_flutter/ui/pages/login.dart';
import 'package:twitter_clone_flutter/ui/pages/signUp.dart';
import 'package:twitter_clone_flutter/ui/pages/forgotPassword.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Twitter Clone',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: "Poppins",
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Icon(
            FontAwesomeIcons.twitter,
            color: Colors.lightBlue,
            size: 24.0,
          ),
        ),
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "See what's happening in \nthe world right now.",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Container(
                width: 275,
                margin: EdgeInsets.all(30),
                height: 50.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      side: BorderSide(color: Colors.lightBlue)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => signUpPage()),
                    );
                  },
                  padding: EdgeInsets.all(15.0),
                  color: Colors.lightBlue,
                  textColor: Colors.white,
                  child: Text("Create Account", style: TextStyle(fontSize: 16)),
                ),
              ),
              Text(
                "Have an account already?",
                style: TextStyle(fontSize: 15),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => loginPage()),
                  );
                },
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.lightBlue),
                ),
              ),
            ]),
          ),
        ));
  }
}
