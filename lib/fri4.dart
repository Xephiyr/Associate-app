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

class PageFour extends StatefulWidget {
  @override
  _PageFourState createState() => _PageFourState();
}

class _PageFourState extends State<PageFour> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceInfo = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Endocrine System'),
      ),
      body: Container(
          child: Stack(children: <Widget>[
        Container(
          width: deviceInfo.size.width,
          height: deviceInfo.size.height,
          decoration: BoxDecoration(
            color: Colors.white,
            image: const DecorationImage(
              image: AssetImage("assets/FRI4.png"),
            ),
          ),
        ),
        GridView.count(
            crossAxisCount: 3,
            childAspectRatio: 1.0,
            mainAxisSpacing: 25,
            padding: const EdgeInsets.fromLTRB(90, 160, 0, 100),
            crossAxisSpacing: 30,
            children: <Widget>[
              Checkbox(
                value: a1,
                onChanged: (bool value) {
                  setState(() {
                    a1 = value;
                  });
                },
              ),
              Checkbox(
                value: a2,
                onChanged: (bool value) {
                  setState(() {
                    a2 = value;
                  });
                },
              ),
              Checkbox(
                value: a3,
                onChanged: (bool value) {
                  setState(() {
                    a3 = value;
                  });
                },
              ),
              Checkbox(
                value: a4,
                onChanged: (bool value) {
                  setState(() {
                    a4 = value;
                  });
                },
              ),
              Checkbox(
                value: a5,
                onChanged: (bool value) {
                  setState(() {
                    a5 = value;
                  });
                },
              ),
              Checkbox(
                value: a6,
                onChanged: (bool value) {
                  setState(() {
                    a6 = value;
                  });
                },
              ),
              Checkbox(
                value: a7,
                onChanged: (bool value) {
                  setState(() {
                    a7 = value;
                  });
                },
              ),
              Checkbox(
                value: a8,
                onChanged: (bool value) {
                  setState(() {
                    a8 = value;
                  });
                },
              ),
              Checkbox(
                value: a9,
                onChanged: (bool value) {
                  setState(() {
                    a9 = value;
                  });
                },
              ),
              Checkbox(
                value: a10,
                onChanged: (bool value) {
                  setState(() {
                    a10 = value;
                  });
                },
              ),
            ]),
      ])),
    );
  }
}
