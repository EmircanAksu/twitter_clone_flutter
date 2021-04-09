import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class forgotPasswordPage extends StatefulWidget {
  @override
  _forgotPasswordPageState createState() => _forgotPasswordPageState();
}

class _forgotPasswordPageState extends State<forgotPasswordPage> {
  var tfControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text('Forgot Password?'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
                controller: tfControl,
                cursorColor: Theme.of(context).cursorColor,
                decoration: InputDecoration(
                  hintText: 'Email or phone number',
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
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Change Password"),
                        content: Text("Email adress:" + " " + tfControl.text),
                        actions: [
                          FlatButton(
                            child: Text("Cancel"),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          FlatButton(
                            child: Text("OK"),
                            onPressed: () {
                              setState(() {
                                
                              });
                            },
                          ),
                        ],
                      );
                    });
              },
              padding: EdgeInsets.all(10.0),
              color: Colors.lightBlue,
              textColor: Colors.white,
              child: Text("Send", style: TextStyle(fontSize: 16)),
            ),
          ),
        ],
      ),
    );
  }
}
