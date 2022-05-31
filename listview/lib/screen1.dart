import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Screen1 extends StatefulWidget {
  Screen1({Key? key, required this.userName}) : super(key: key);
  String userName;

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('contact info'),
          backgroundColor: Colors.black,
        ),
        body: Container(
          child: Column(
            children: [
              Column(
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Center(
                    child: Container(
                      alignment: Alignment.center,
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(color: Colors.white),
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        widget.userName[0],
                        style: TextStyle(color: Colors.white, fontSize: 50),
                      ),
                    ),
                  ),
                  Text(
                    widget.userName,
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Container(
                      padding: EdgeInsets.only(top: 40, left: 20),
                      height: 70,
                      width: 90,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Text(
                        "call",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                        height: 70,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20))),
                    SizedBox(width: 10),
                    Container(
                        height: 70,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20))),
                    SizedBox(width: 10),
                    Container(
                        height: 70,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20)))
                  ],
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.black);
  }
}
