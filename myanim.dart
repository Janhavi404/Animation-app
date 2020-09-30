import 'package:flutter/material.dart';

class MyA1 extends StatefulWidget {
  @override
  _MyA1State createState() => _MyA1State();
}

class _MyA1State extends State<MyA1> with SingleTickerProviderStateMixin {
  var myanicon;
  var animation;

  @override
  void initState() {
    super.initState();
    myanicon = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    print(myanicon);

    animation = CurvedAnimation(parent: myanicon, curve: Curves.elasticInOut)
      ..addListener(() {
        setState(() {
          print(animation.value);
        });
      });

    print(animation);

    myanicon.forward();
    print(myanicon);
  }

  @override
  void dispose() {
    super.dispose();
    myanicon.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Card(
                elevation: 50 * animation.value,
                child: GestureDetector(
                  onTap: () {
                    myanicon.forward(from: 0.5);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * animation.value +
                        20,
                    height: MediaQuery.of(context).size.height *
                            0.10 *
                            animation.value +
                        50,
                    color: Colors.yellowAccent,
                    child: Center(
                      child: Text(
                        'Nothing can dim the light that shines from within',
                        style: TextStyle(
                          fontSize: 15.0 * animation.value + 8.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                elevation: 10 * animation.value,
                child: GestureDetector(
                  onTap: () {
                    myanicon.forward(from: 0.5);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * animation.value +
                        20,
                    height: MediaQuery.of(context).size.height *
                            0.10 *
                            animation.value +
                        50,
                    color: Colors.yellowAccent[400],
                    child: Center(
                      child: Text(
                        'Everything that is happening now is happening for my ultimate good.',
                        style: TextStyle(
                          fontSize: 10.0 * animation.value + 8.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                elevation: 50 * animation.value,
                child: GestureDetector(
                  onTap: () {
                    myanicon.forward(from: 0.5);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * animation.value +
                        20,
                    height: MediaQuery.of(context).size.height *
                            0.10 *
                            animation.value +
                        50,
                    color: Colors.lightGreen,
                    child: Center(
                      child: Text(
                        'As long as I keep trying, I am winnning.',
                        style: TextStyle(
                          fontSize: 17.0 * animation.value + 8.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                elevation: 10 * animation.value,
                child: GestureDetector(
                  onTap: () {
                    myanicon.forward(from: 0.5);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * animation.value +
                        20,
                    height: MediaQuery.of(context).size.height *
                            0.10 *
                            animation.value +
                        50,
                    color: Colors.green[600],
                    child: Center(
                      child: Text(
                        'Success takes time and effort, be patient and kind to yourself.',
                        style: TextStyle(
                          fontSize: 10.0 * animation.value + 8.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
