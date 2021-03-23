import 'package:associate_app/data.dart' as global;
import 'package:associate_app/fri1.dart';
import 'package:associate_app/fri2.dart';
import 'package:associate_app/fri3.dart';
import 'package:associate_app/fri4.dart';
import 'package:associate_app/fri5.dart';
import 'package:associate_app/fri6.dart';
import 'package:associate_app/fri7.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

FirebaseFirestore db = FirebaseFirestore.instance;
bool enable = false;

void submitData() async {
  return db
      .collection('Data')
      .doc(global.globalSessionData.reportId)
      .update({})
      .then((value) => print('Success'))
      .catchError((error) {
        print('Error' + error.toString());
      });
}

var docid = new TextEditingController();
Color no = Colors.red;
Color yes = Colors.blue;

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Associate Data Logger',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: <String, WidgetBuilder>{
        '/pone': (BuildContext context) => PageOne(),
        '/ptwo': (BuildContext context) => PageTwo(),
        '/pthree': (BuildContext context) => PageThree(),
        '/pfour': (BuildContext context) => PageFour(),
        '/pfive': (BuildContext context) => PageFive(),
        '/psix': (BuildContext context) => PageSix(),
        '/pseven': (BuildContext context) => PageSeven(),
      },
      home: MyHomePage(title: 'Acculi Associate App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

void initializeFlutterFire() async {
  try {
    // Wait for Firebase to initialize and set `_initialized` state to true
    await Firebase.initializeApp();
    // setState(() {
    //   _initialized = true;
    // });
    print('Success');
  } catch (e) {
    // Set `_error` state to true if Firebase initialization fails
    // setState(() {
    //   _error = true;
    // });
    print('Failure');
  }
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    global.clearSessionData();
    initializeFlutterFire();
  }

  Future<void> _displayTextInputDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('TextField in Dialog'),
            content: TextField(
              controller: docid,
              decoration: InputDecoration(hintText: "Text Field in Dialog"),
            ),
            actions: <Widget>[
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  setState(() {
                    global.globalSessionData.reportId = docid.text;
                    print(global.globalSessionData.reportId);
                    enable = true;
                    Navigator.pop(context);
                  });
                },
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceInfo = MediaQuery.of(context);
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: const Icon(Icons.navigation),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: ListTile(
                    leading: Icon(Icons.add),
                    title: Text("Report ID"),
                    enabled: !enable,
                    onTap: () {
                      //showAlertDialog(context);
                      _displayTextInputDialog(context);
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: ListTile(
                    leading: Icon(Icons.add),
                    title: Text("Nervous System"),
                    enabled: enable,
                    onTap: () async {
                      Navigator.of(context).pushNamed('/pone');
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: ListTile(
                    leading: Icon(Icons.add),
                    enabled: enable,
                    title: Text("Cardiovascular System"),
                    onTap: () {
                      Navigator.of(context).pushNamed('/ptwo');
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: ListTile(
                    leading: Icon(Icons.add),
                    title: Text("Metabolic System"),
                    enabled: enable,
                    onTap: () {
                      Navigator.of(context).pushNamed('/pthree');
                    },
                  ),
                ),
              ),

              /* Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: ListTile(
                    title: Text("Alarm test"),
                    onTap: () {
                      navigatorKey.currentState.pushNamed('/alarm');
                    }),
              ),
            ),  */
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: ListTile(
                      leading: Icon(Icons.add),
                      title: Text("Endocrine System"),
                      enabled: enable,
                      onTap: () {
                        Navigator.of(context).pushNamed('/pfour');
                      }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: ListTile(
                      leading: Icon(Icons.add),
                      title: Text("Respiratory System"),
                      enabled: enable,
                      onTap: () {
                        Navigator.of(context).pushNamed('/pfive');
                      }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: ListTile(
                      leading: Icon(Icons.add),
                      title: Text("Immune"),
                      enabled: enable,
                      onTap: () {
                        Navigator.of(context).pushNamed('/psix');
                      }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: ListTile(
                      leading: Icon(Icons.add),
                      title: Text("Lyfas Stress"),
                      enabled: enable,
                      onTap: () {
                        Navigator.of(context).pushNamed('/pseven');
                      }),
                ),
              ),

              //Add buttons here
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
