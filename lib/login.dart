import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'about.dart';

// ignore: camel_case_types
class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

// ignore: camel_case_types
class _loginState extends State<login> {
  final myController = TextEditingController();
  final myController1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width,
      color: Colors.pink[400],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(" FreeLarn login :",
              style: TextStyle(color: Colors.white, fontSize: 30)),
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: new InputDecoration(hintText: "enter yore email"),
            controller: myController,
          ),
          SizedBox(
            height: 6,
          ),
          TextField(
            controller: myController1,
            keyboardType: TextInputType.visiblePassword,
            decoration: new InputDecoration(hintText: "enter your password"),
          ),
          SizedBox(
            height: 6,
          ),
          FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyCustomForm()),
                );
              },
              child: Text("login"))
        ],
      ),
    ));
  }
}