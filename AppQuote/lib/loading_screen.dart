import 'dart:ffi';

import 'package:flutter/material.dart';


class LoadingScreen extends StatefulWidget {
  LoadingScreen({Key key}) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {



int costing = 0;
int quesNumber = 1;
final List<String> quote = <String>[
  'What type of mobile app suits your needs?', 
  'Which mobile screen size does your app need to support',
  'What type of app do you need?',
  'Will your users need a usernameand password?',
  'How will they login?',
  'Will they have a user profile',
  'Will your app use push notifications'];

final List<int> colorCodes = <int>[600, 500, 100];

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
                      'SUPPORTED PLATFORM',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.green,

                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'What type of mobile apps suits your needs?',
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
            'Native',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24.0
            ),
          ),
          subtitle: Text(
            'An application coded natively for a specific mobile device like Android or iOS',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16.0
            ),
          ),

          ),

        onPressed: (){
          setState(() {
            int native = 47;
            costing = native+costing;
            quesNumber++;
            
          });
        },
          
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Divider(height: 20, color: Colors.grey,)),

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
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16.0
            ),
          ),

          ),

        onPressed: (){
          setState(() {
            
          });
        },
          
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Divider(height: 20, color: Colors.grey,)),

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
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16.0
            ),
          ),

          ),

        onPressed: (){
          setState(() {
            
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




