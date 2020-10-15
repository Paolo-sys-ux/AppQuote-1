import 'package:flutter/material.dart';


class ResultsScreen extends StatefulWidget {
  final id = ResultsScreen();
 
  @override
  _ResultsScreenState createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

          body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
          Container(
              color: Colors.green,
              
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[



                //back button
                 FlatButton(
                  onPressed: (){
                    setState(() {
                      Navigator.pop(context);
                    });
                   },
                    child: Icon(
                    Icons.arrow_back,
                     size: 40.0,
                   ),
                 ),

                  Column(
                    
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
                        'Php Something',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),

     
                    ],
    ),
                ],
          ))]));
  }
}