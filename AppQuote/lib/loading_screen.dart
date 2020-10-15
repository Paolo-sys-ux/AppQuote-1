import 'dart:ffi';

import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  LoadingScreen({Key key}) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  int i = 0;
  int costing = 0;
  int quesNumber = 1;

  final List<String> mainType = <String>[
    'SUPPORTED PLATFORM',
    'SUPPORTED DEVICES',
    'APPLICATION TYPE',
    'USER ACCESS',
    'ACCESSIBILITY',
    'USER PROFILE',
    'NOTIFICATIONS',
    'MESSAGING',
    'FORM FUNCTION',
    'GPS FUNCTION',
    'CAMERA USAGE',
    'E-COMMERCE FUNCTION',
    'TYPE OF ITEMS',
    'DESIGN ASSETS',
    'WIREFRAMES OR DRAFTS',
  ];

  final List<String> quote = <String>[
    'What type of mobile app suits your needs?',
    'Which mobile screen size does your app need to support',
    'What type of app do you need?',
    'Will your users need a usernameand password?',
    'How will they login?',
    'Will they have a user profile?',
    'Will your app use push notifications?',
    'Will your users share information with each other?',
    'Will your app have forms for the user to fill out?',
    'Does your app need to get the user\'s location?',
    'Will your app need capture video or photos?',
    'Will you be selling anything in you app?',
    'What sort of items will you sell?',
    'Do you have the app artwork created yet?',
    'Do you have an RFP or sketches already created'
  ];

  final List<String> title = <String>[
    'Native',
    'Smartphones only',
    'Game',
    'Yes',
    'Social Network',
    'Yes',
    'Yex',
    'Yey',
    'Yez',
    'Yess',
    'zxc',
    'adawd',
    'awdwadwa',
    'awdwadwada',
    'awdadwad',
  ];

  final List<String> subtitle = <String>[
    'this is a test1',
    'this is a test2',
    'this is a test3',
    'this is a test4',
    'this is a test5',
    'this is a test6',
    'this is a test7',
    'this is a test8',
    'this is a test9',
    'this is a test10',
    'this is a test11',
    'this is a test12',
    'this is a test13',
    'this is a test14',
    'this is a test15',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            color: Colors.green,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  'Estimated Cost',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26.0,
                    color: Colors.greenAccent,
                  ),
                ),
                Text(
                  'Php $costing',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Question $quesNumber of 15',
              style: TextStyle(
                fontSize: 28.0,
                color: Colors.green[200],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              mainType[i],
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.green,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              quote[i],
              style: TextStyle(
                fontSize: 26.0,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          FlatButton(
            splashColor: Colors.grey,
            child: ListTile(
              leading: Image(
                image: new AssetImage("images/native.png"),
              ),
              title: Text(
                title[i],
                style: TextStyle(color: Colors.black, fontSize: 24.0),
              ),
              subtitle: Text(
                subtitle[i],
                style: TextStyle(color: Colors.grey, fontSize: 16.0),
              ),
            ),
            onPressed: () {
              if (quesNumber == 15) {
                return Scaffold();
              }
              setState(() {
                i++;
                int native = 47;
                costing = native + costing;
                quesNumber++;
              });
            },
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Divider(
                height: 20,
                color: Colors.grey,
              )),
          FlatButton(
            splashColor: Colors.grey,
            child: ListTile(
              leading: Image(
                image: AssetImage("images/platform.png"),
              ),
              title: Text(
                'Cross Platform',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24.0,
                ),
              ),
              subtitle: Text(
                'One application that will run on most devices, but arecode in Javascript',
                style: TextStyle(color: Colors.grey, fontSize: 16.0),
              ),
            ),
            onPressed: () {
              if (quesNumber == 15) {
                return Scaffold();
              }
              setState(() {
                i++;
                int native = 47;
                costing = native + costing;
                quesNumber++;
              });
            },
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Divider(
                height: 20,
                color: Colors.grey,
              )),
          FlatButton(
            splashColor: Colors.grey,
            child: ListTile(
              leading: Image(
                image: AssetImage("images/ways.png"),
              ),
              title: Text(
                'I Don\'t Know',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24.0,
                ),
              ),
              subtitle: Text(
                'I don\'t know which kind I nee help me choose which is best',
                style: TextStyle(color: Colors.grey, fontSize: 16.0),
              ),
            ),
            onPressed: () {
              if (quesNumber == 15) {
                return Scaffold();
              }
              setState(() {
                i++;
                int native = 47;
                costing = native + costing;
                quesNumber++;
              });
            },
          ),
          SizedBox(
            height: 40.0,
          ),
          Expanded(
            child: Container(
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
