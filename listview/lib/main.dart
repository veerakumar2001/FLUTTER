import 'package:flutter/material.dart';
import 'package:listview/screen1.dart';

void main() {
  runApp(const Mylist());
}
//ksjc lskd
class Mylist extends StatefulWidget {
  const Mylist({Key? key}) : super(key: key);

  @override
  State<Mylist> createState() => _MylistState();
}

class _MylistState extends State<Mylist> {
  List<String> users = ["Veera", 'Santhosh', 'Preveen', 'Prem', 'sudheer'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Contacts"),
            backgroundColor: Colors.black,
          ),
          body: ListView(
            padding: const EdgeInsets.all(10),
            children: [
              Container(
                  height: 60,
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(
                          width: 1, color: Color.fromARGB(255, 110, 109, 109)),
                      bottom: BorderSide(
                          width: 1, color: Color.fromARGB(255, 110, 109, 109)),
                    ),
                    color: Colors.black,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          users[0],
                          style: TextStyle(color: Colors.white, fontSize: (25)),
                        ),
                      ),
                      CustomIcon(userName: users[0])
                      // InkWell(
                      //   child: Icon(Icons.info_outline, color: Colors.white),
                      //   onTap: () {
                      //     Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //           builder:( (context) => const Screen1())),
                      //     );
                      //   },
                      // )
                    ],
                  )),
              Container(
                  height: 60,
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(
                          width: 1, color: Color.fromARGB(255, 110, 109, 109)),
                      bottom: BorderSide(
                          width: 1, color: Color.fromARGB(255, 110, 109, 109)),
                    ),
                    color: Colors.black,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          users[1],
                          style: TextStyle(color: Colors.white, fontSize: (25)),
                        ),
                      ),
                      CustomIcon(
                        userName: users[1],
                      )
                    ],
                  )),
              Container(
                  height: 60,
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(
                          width: 1, color: Color.fromARGB(255, 110, 109, 109)),
                      bottom: BorderSide(
                          width: 1, color: Color.fromARGB(255, 110, 109, 109)),
                    ),
                    color: Colors.black,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          users[2],
                          style: TextStyle(color: Colors.white, fontSize: (25)),
                        ),
                      ),
                      CustomIcon(userName: users[2])
                    ],
                  )),
              Container(
                  height: 60,
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(
                          width: 1, color: Color.fromARGB(255, 110, 109, 109)),
                      bottom: BorderSide(
                          width: 1, color: Color.fromARGB(255, 110, 109, 109)),
                    ),
                    color: Colors.black,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          users[3],
                          style: TextStyle(color: Colors.white, fontSize: (25)),
                        ),
                      ),
                      CustomIcon(userName: users[3])
                    ],
                  )),
            ],
          ),
          backgroundColor: Colors.black),
    );
  }
}

class CustomIcon extends StatelessWidget {
  CustomIcon({required this.userName});
  String userName;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Icon(Icons.info_outline, color: Colors.white),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: ((context) => Screen1(
                    userName: userName,
                  ))),
        );
      },
    );
  }
}
