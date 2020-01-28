import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Login",
              style: TextStyle(fontSize: 20),
            ),
            TextField(
              decoration: InputDecoration.collapsed(hintText: 'Username'),
            ),
            TextField(
              decoration: InputDecoration.collapsed(hintText: 'Password'),
            ),
            RaisedButton(
              child: Text("Login"),
              color: Color(0xffFF1744),
              textColor: Colors.green,
              splashColor: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}
