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
  'Do you have an RFP or sketches already created'];





final List<String> title1 = <String>[
  'Native',
  'Smartphones Only',
  'Game',
  'Yes',
  'Social Network',
  'Yes',
  'Yes',
  'Yes',
  'Yes',
  'Yes',
  'Yes',
  'Yes',
  'In-app purchases',
  'Yes',
  'Yes',
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
              
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[



                //back button
                 FlatButton(
                  onPressed: (){
                    setState(() {
                    i--;
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
                        'Php $costing',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),

     
                    ],
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
                    'Question ${i+1} of 15',
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
            title1[i],
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
          if(quesNumber == 15){
            return Scaffold();
          }
          setState(() {
            i++;
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




