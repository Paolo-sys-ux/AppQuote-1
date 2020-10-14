import 'package:flutter/material.dart';


class LoadingScreen extends StatefulWidget {
  LoadingScreen({Key key}) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

int costing = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: Container(
         color: Colors.green,
          child: Expanded(
            
            child: Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
                Text(
                  'Estimated Cost:',
                  style: TextStyle(
                  fontSize: 24.0,
              ),
),
                Text(
                  'Php $costing',
                )
         ]
            ),
          ),
        ),
    
    );
  }
}