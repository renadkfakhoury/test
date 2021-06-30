import 'package:flutter/material.dart';

import 'HomePage.dart';

class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final myController = TextEditingController();
  @override
  
  
  final myControllery = TextEditingController(text: "0");
  final TextEditingController t2 = TextEditingController(text:"0");
  var num1 ,num2 ,sum =0 ;
  void add (){
    num1 = int.parse(myControllery.text);
    num2 = int.parse(t2.text);
    setState(() {
      sum = num1+num2;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: [
              Text("output : $sum" , style: TextStyle(color: Colors.purple[300]),),
              Padding(
                padding: const EdgeInsets.only(left: 100 ,right: 100 ,top: 5 ),
                child: TextField(
                  controller:myControllery ,
                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(hintText: "number1"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100 ,right: 100 ,top: 5 ),
                child: TextField(
                  controller:t2 ,
                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(hintText: "number2"),
                ),
              ),
               FlatButton(
                  onPressed: () {
                     add();
                  },
                  child: Text('sum', style: TextStyle(color: Colors.black))),
              FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  child: Text('back', style: TextStyle(color: Colors.black))),
            ],
          ),
        ),
      ),
    );
  }
}
