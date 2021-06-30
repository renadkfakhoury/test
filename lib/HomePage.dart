import 'dart:html';
import 'login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'about.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width,
      color: Colors.pink[400],
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          children: [
            Row(
              //the first row
              children: [
                FlatButton(
                    onPressed: () {},
                    child: Text('Home', style: TextStyle(color: Colors.white))),
                FlatButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> login()),);
                    },
                    child: Text('login', style: TextStyle(color: Colors.white))),
                FlatButton(
                    onPressed: () {
                     
                    },
                    child:
                        Text('about', style: TextStyle(color: Colors.white))),
                FlatButton(
                    onPressed: () {},
                    child: Text('help', style: TextStyle(color: Colors.white))),
                Spacer(),
                Text(
                  "FreeLarn login  ",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Container(
                        child: Image.asset(
                      "images/cloud.jpg",
                      width: 530,
                      height: 320,
                    )),
                  ),
                ),
                Expanded(
                    child: Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          " Lorem Ipsum, giving  on  its origins  giving  ",
                          style: TextStyle(color: Colors.white, fontSize: 40),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          " Lorem Ipsum, giving information on its origins,giving information on its origins, giving information on its origins giving information on its origins, giving information on its origins",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                            decoration: BoxDecoration(
                              color: Colors.pink[500],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  right: 10, left: 6, top: 4),
                              child: Text("read More",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.white)),
                            )),
                      ]),
                )),
              ],
            ),
          ],
        ),
      ),
    ));
    return scaffold;
  }
}

class Cairo {}
