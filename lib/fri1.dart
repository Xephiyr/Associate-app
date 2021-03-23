import 'package:associate_app/data.dart' as global;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

bool a1 = false,
    a2 = false,
    a3 = false,
    a4 = false,
    a5 = false,
    a6 = false,
    a7 = false,
    a8 = false,
    a9 = false,
    a10 = false,
    a11 = false,
    a12 = false,
    a13 = false,
    a14 = false,
    a15 = false,
    a16 = false,
    a17 = false,
    a18 = false;

class PageOne extends StatefulWidget {
  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceInfo = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Nervous System'),
      ),
      body: Container(
          child: Stack(children: <Widget>[
        Container(
          width: deviceInfo.size.width,
          height: deviceInfo.size.height,
          decoration: BoxDecoration(
            color: Colors.white,
            image: const DecorationImage(
              image: AssetImage("assets/FRI1.png"),
            ),
          ),
        ),
        GridView.count(
            crossAxisCount: 3,
            childAspectRatio: 1,
            mainAxisSpacing: 10,
            padding: const EdgeInsets.fromLTRB(70, 20, 0, 0),
            crossAxisSpacing: 15,
            children: <Widget>[
              Checkbox(
                value: a1,
                onChanged: (bool value) {
                  setState(() {
                    a1 = value;
                    global.globalSessionData.pone1 = a1;
                  });
                },
              ),
              Checkbox(
                value: a2,
                onChanged: (bool value) {
                  setState(() {
                    a2 = value;
                    global.globalSessionData.pone2 = a2;
                  });
                },
              ),
              Checkbox(
                value: a3,
                onChanged: (bool value) {
                  setState(() {
                    a3 = value;
                    global.globalSessionData.pone3 = a3;
                  });
                },
              ),
              Checkbox(
                value: a4,
                onChanged: (bool value) {
                  setState(() {
                    a4 = value;
                    global.globalSessionData.pone4 = a4;
                  });
                },
              ),
              Checkbox(
                value: a5,
                onChanged: (bool value) {
                  setState(() {
                    a5 = value;
                    global.globalSessionData.pone5 = a5;
                  });
                },
              ),
              Checkbox(
                value: a6,
                onChanged: (bool value) {
                  setState(() {
                    a6 = value;
                    global.globalSessionData.pone6 = a6;
                  });
                },
              ),
              Checkbox(
                value: a7,
                onChanged: (bool value) {
                  setState(() {
                    a7 = value;
                    global.globalSessionData.pone7 = a7;
                  });
                },
              ),
              Checkbox(
                value: a8,
                onChanged: (bool value) {
                  setState(() {
                    a8 = value;
                    global.globalSessionData.pone8 = a8;
                  });
                },
              ),
              Checkbox(
                value: a9,
                onChanged: (bool value) {
                  setState(() {
                    a9 = value;
                    global.globalSessionData.pone9 = a9;
                  });
                },
              ),
              Checkbox(
                value: a10,
                onChanged: (bool value) {
                  setState(() {
                    a10 = value;
                    global.globalSessionData.pone10 = a10;
                  });
                },
              ),
              Checkbox(
                value: a11,
                onChanged: (bool value) {
                  setState(() {
                    a11 = value;
                    global.globalSessionData.pone11 = a11;
                  });
                },
              ),
              Checkbox(
                value: a12,
                onChanged: (bool value) {
                  setState(() {
                    a12 = value;
                    global.globalSessionData.pone12 = a12;
                  });
                },
              ),
              Checkbox(
                value: a13,
                onChanged: (bool value) {
                  setState(() {
                    a13 = value;
                    global.globalSessionData.pone13 = a13;
                  });
                },
              ),
              Checkbox(
                value: a14,
                onChanged: (bool value) {
                  setState(() {
                    a14 = value;
                    global.globalSessionData.pone14 = a14;
                  });
                },
              ),
              Checkbox(
                value: a15,
                onChanged: (bool value) {
                  setState(() {
                    a15 = value;
                    global.globalSessionData.pone15 = a15;
                  });
                },
              ),
              Checkbox(
                value: a16,
                onChanged: (bool value) {
                  setState(() {
                    a16 = value;
                    global.globalSessionData.pone16 = a16;
                  });
                },
              ),
              Checkbox(
                value: a17,
                onChanged: (bool value) {
                  setState(() {
                    a17 = value;
                    global.globalSessionData.pone17 = a17;
                  });
                },
              ),
              Checkbox(
                value: a18,
                onChanged: (bool value) {
                  setState(() {
                    a18 = value;
                    global.globalSessionData.pone18 = a18;
                  });
                },
              ),
            ]),
      ])),
    );
  }
}
