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
TextEditingController physical1,
    physical2,
    physical3,
    psycho1,
    psycho2,
    psycho3,
    psycho4,
    patho1,
    patho2,
    patho3,
    patho4,
    patho5,
    patho6,
    patho7,
    patho8,
    patho9,
    patho10,
    patho11,
    patho12;

class PageSeven extends StatefulWidget {
  @override
  _PageSevenState createState() => _PageSevenState();
}

class _PageSevenState extends State<PageSeven> {
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    physical1 = TextEditingController(text: "");
    physical2 = TextEditingController(text: "");
    physical3 = TextEditingController(text: "");
    psycho1 = TextEditingController(text: "");
    psycho2 = TextEditingController(text: "");
    psycho3 = TextEditingController(text: "");
    psycho4 = TextEditingController(text: "");
    patho1 = TextEditingController(text: "");
    patho2 = TextEditingController(text: "");
    patho3 = TextEditingController(text: "");
    patho4 = TextEditingController(text: "");
    patho5 = TextEditingController(text: "");
    patho6 = TextEditingController(text: "");
    patho7 = TextEditingController(text: "");
    patho8 = TextEditingController(text: "");
    patho9 = TextEditingController(text: "");
    patho10 = TextEditingController(text: "");
    patho11 = TextEditingController(text: "");
    patho12 = TextEditingController(text: "");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceInfo = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Lyfas Stress'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_formKey.currentState.validate()) {}
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: deviceInfo.size.width,
              height: deviceInfo.size.height,
              decoration: BoxDecoration(
                color: Colors.white,
                image: const DecorationImage(
                  image: AssetImage("assets/FRI7.png"),
                ),
              ),
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      controller: physical1,
                      maxLines: 4,
                      decoration: const InputDecoration(
                        hintText: ' ',
                        labelText: 'Physical - 1',
                      ),
                      onTap: () async {},
                      validator: (phy1) {
                        if (phy1.isEmpty) {
                          return 'Answer cannot be empty';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      controller: physical2,
                      maxLines: 4,
                      decoration: const InputDecoration(
                        hintText: ' ',
                        labelText: 'Physical - 2',
                      ),
                      onTap: () async {},
                      validator: (phy2) {
                        if (phy2.isEmpty) {
                          return 'Answer cannot be empty';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      controller: physical3,
                      maxLines: 4,
                      decoration: const InputDecoration(
                        hintText: ' ',
                        labelText: 'Physical - 3',
                      ),
                      onTap: () async {},
                      validator: (phy3) {
                        if (phy3.isEmpty) {
                          return 'Answer cannot be empty';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      controller: psycho1,
                      maxLines: 4,
                      decoration: const InputDecoration(
                        hintText: ' ',
                        labelText: 'Psychological - 1',
                      ),
                      onTap: () async {},
                      validator: (psy1) {
                        if (psy1.isEmpty) {
                          return 'Answer cannot be empty';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      controller: psycho2,
                      maxLines: 4,
                      decoration: const InputDecoration(
                        hintText: ' ',
                        labelText: 'Psychological - 2',
                      ),
                      onTap: () async {},
                      validator: (psy2) {
                        if (psy2.isEmpty) {
                          return 'Answer cannot be empty';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      controller: psycho3,
                      maxLines: 4,
                      decoration: const InputDecoration(
                        hintText: ' ',
                        labelText: 'Psychological - 3',
                      ),
                      onTap: () async {},
                      validator: (psy3) {
                        if (psy3.isEmpty) {
                          return 'Answer cannot be empty';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      controller: psycho4,
                      maxLines: 4,
                      decoration: const InputDecoration(
                        hintText: ' ',
                        labelText: 'Psychological - 4',
                      ),
                      onTap: () async {},
                      validator: (psy4) {
                        if (psy4.isEmpty) {
                          return 'Answer cannot be empty';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      controller: patho1,
                      maxLines: 4,
                      decoration: const InputDecoration(
                        hintText: ' ',
                        labelText: 'Pathological - 1',
                      ),
                      onTap: () async {},
                      validator: (pat1) {
                        if (pat1.isEmpty) {
                          return 'Answer cannot be empty';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      controller: patho2,
                      maxLines: 4,
                      decoration: const InputDecoration(
                        hintText: ' ',
                        labelText: 'Pathological - 2',
                      ),
                      onTap: () async {},
                      validator: (pat2) {
                        if (pat2.isEmpty) {
                          return 'Answer cannot be empty';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      controller: patho3,
                      maxLines: 4,
                      decoration: const InputDecoration(
                        hintText: ' ',
                        labelText: 'Pathological - 3',
                      ),
                      onTap: () async {},
                      validator: (pat3) {
                        if (pat3.isEmpty) {
                          return 'Answer cannot be empty';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      controller: patho4,
                      maxLines: 4,
                      decoration: const InputDecoration(
                        hintText: ' ',
                        labelText: 'Pathological - 4',
                      ),
                      onTap: () async {},
                      validator: (pat4) {
                        if (pat4.isEmpty) {
                          return 'Answer cannot be empty';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      controller: patho5,
                      maxLines: 4,
                      decoration: const InputDecoration(
                        hintText: ' ',
                        labelText: 'Pathological - 5',
                      ),
                      onTap: () async {},
                      validator: (pat5) {
                        if (pat5.isEmpty) {
                          return 'Answer cannot be empty';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      controller: patho6,
                      maxLines: 4,
                      decoration: const InputDecoration(
                        hintText: ' ',
                        labelText: 'Pathological - 6',
                      ),
                      onTap: () async {},
                      validator: (pat6) {
                        if (pat6.isEmpty) {
                          return 'Answer cannot be empty';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      controller: patho7,
                      maxLines: 4,
                      decoration: const InputDecoration(
                        hintText: ' ',
                        labelText: 'Pathological - 7',
                      ),
                      onTap: () async {},
                      validator: (pat7) {
                        if (pat7.isEmpty) {
                          return 'Answer cannot be empty';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      controller: patho8,
                      maxLines: 4,
                      decoration: const InputDecoration(
                        hintText: ' ',
                        labelText: 'Pathological - 8',
                      ),
                      onTap: () async {},
                      validator: (pat8) {
                        if (pat8.isEmpty) {
                          return 'Answer cannot be empty';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      controller: patho9,
                      maxLines: 4,
                      decoration: const InputDecoration(
                        hintText: ' ',
                        labelText: 'Pathological - 9',
                      ),
                      onTap: () async {},
                      validator: (pat9) {
                        if (pat9.isEmpty) {
                          return 'Answer cannot be empty';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      controller: patho10,
                      maxLines: 4,
                      decoration: const InputDecoration(
                        hintText: ' ',
                        labelText: 'Pathological - 10',
                      ),
                      onTap: () async {},
                      validator: (pat10) {
                        if (pat10.isEmpty) {
                          return 'Answer cannot be empty';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      controller: patho11,
                      maxLines: 4,
                      decoration: const InputDecoration(
                        hintText: ' ',
                        labelText: 'Pathological - 11',
                      ),
                      onTap: () async {},
                      validator: (pat11) {
                        if (pat11.isEmpty) {
                          return 'Answer cannot be empty';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      controller: patho12,
                      maxLines: 4,
                      decoration: const InputDecoration(
                        hintText: ' ',
                        labelText: 'Pathological - 12',
                      ),
                      onTap: () async {},
                      validator: (pat12) {
                        if (pat12.isEmpty) {
                          return 'Answer cannot be empty';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
