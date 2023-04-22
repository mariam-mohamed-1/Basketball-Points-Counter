import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int TeamAPoints = 0;

  int TeamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Basketball Points Counter',
          style: TextStyle(
            color: Colors.redAccent,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 450,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Team A',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 40,
                      ),
                    ),
                    Text(
                      '$TeamAPoints',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 120,
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            TeamAPoints++;
                          });
                        },
                        child: Text('Add 1 Point',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                fontSize: 17)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent,
                          foregroundColor: Colors.black,
                          minimumSize: Size(120, 40),
                        )),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            TeamAPoints = TeamAPoints + 2;
                          });
                        },
                        child: Text('Add 2 Points',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                fontSize: 17)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent,
                          foregroundColor: Colors.black,
                          minimumSize: Size(120, 40),
                        )),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            TeamAPoints = TeamAPoints + 3;
                          });
                        },
                        child: Text('Add 3 Points',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                fontSize: 17)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent,
                          foregroundColor: Colors.black,
                          minimumSize: Size(120, 40),
                        )),
                  ],
                ),
              ),
              Container(
                height: 450,
                child: VerticalDivider(
                  thickness: 2,
                  color: Colors.black,
                ),
              ),
              Container(
                height: 450,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Team B',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 40,
                      ),
                    ),
                    Text(
                      '$TeamBPoints',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 120,
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            TeamBPoints++;
                          });
                        },
                        child: Text('Add 1 Point',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                fontSize: 17)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent,
                          foregroundColor: Colors.black,
                          minimumSize: Size(120, 40),
                        )),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            TeamBPoints = TeamBPoints + 2;
                          });
                        },
                        child: Text('Add 2 Points',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                fontSize: 17)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent,
                          foregroundColor: Colors.black,
                          minimumSize: Size(120, 40),
                        )),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            TeamBPoints = TeamBPoints + 3;
                          });
                        },
                        child: Text('Add 3 Points',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                fontSize: 17)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent,
                          foregroundColor: Colors.black,
                          minimumSize: Size(120, 40),
                        )),
                  ],
                ),
              )
            ],
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  TeamBPoints = 0;
                  TeamAPoints = 0;
                });
              },
              child: Text('Reset',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: 30)),
              style: ElevatedButton.styleFrom(
                primary: Colors.redAccent,
                minimumSize: Size(120, 40),
              )),
        ],
      ),
    );
  }
}
