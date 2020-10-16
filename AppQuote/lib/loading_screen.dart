import 'dart:ffi';

import 'package:AppQuote/results_screen.dart';
import 'package:flutter/material.dart';
import 'results_screen.dart';

class LoadingScreen extends StatefulWidget {
  static const String id = 'loading_screen';

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {


int i = 0;
int costing = 0;
int quesNumber = 1;

bool _isButtonDisabled = true;

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

final List<String> subtitle1 = <String>[
  'An application coded natively for a specific mobile device like Android or iOS',
  'I will only support phone-size screens. Tablets sizes will simply scale up',
  'My app is a game and with require animation and graphic elements',
  'They will need to login and register to use the app',
  'They will login with their social networking credentials, like Facebook.',
  'They will have a user profile that others can view',
  'I will send push notifications to my users',
  'They will share information with each others(contentm chat etc.)',
  'They will fill out forms.',
  'My app will use GPS and location services.',
  'The app will need to capture photos or videos.',
  'I will be selling items in my app',
  'I will sell items through in-app purchases.',
  'I already have the app\'s final designs created for the app.',
  'I already have wireframe and/or technical specification created.', 

];

final List<IconData> icon1 = [

];

final List<String> title2 = <String>[
  'Cross Platform',
  'Tablets Only',
  'Business',
  'No',
  'No',
  'No',
  'No',
  'No',
  'No',
  'No',
  'No',
  'No', 
  

];

final List<String> subtitle2 = <String>[

  'One application that will run on most devices, but are codes in JavaScript',
  'I will only support tablet-size screens and devices, like iPad',
  'My app is for business and shouldn\'t require any animations',
  'They can use it without needing to login or register an account',
  'I will not send push notifications to my users',
  'My users do not interact with each other in any way',
  'They do not fill out any forms.',
  'My app will not use GPS or location services.',
  'My app does not need to capture videos or photos',
  'My app will not be selling anything',
  'I will need the app UI/UX designs created for the app',
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
                 quesNumber != 1 ?
                 FlatButton(
                  
                  onPressed:(){
                    setState(() {
                    if(i >= 1){
                           i--;
                           quesNumber--;
                    }else{
                     Scaffold();
                    }
                  });
                   },
                    child: Icon(
                    Icons.arrow_back,
                    size: 40.0,
                   ),
                   
                 ):SizedBox(),

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

           SizedBox(height: 20.0,),

        FlatButton(
          splashColor: Colors.grey,
          child: ListTile(
          leading: Image(
          image: new AssetImage("images/native.png"),),
          title: Text(title1[i],
            style: TextStyle(
            color: Colors.black,
            fontSize: 24.0),),
          subtitle: Text(subtitle1[i],
            style: TextStyle(
            color: Colors.grey,
            fontSize: 16.0),),),

         onPressed: (){
          print(quesNumber);
         
            setState(() {

            if(quesNumber == 14){Navigator.pushNamed(context, ResultsScreen.id);}

            if(quesNumber <14){
            i++;
            int native = 47;
            costing = native+costing;
            quesNumber++;
            }else{
                
               
                // quesNumber--;
             
                  i = 0;
                  quesNumber = 1;
                  costing = 0;
                  Scaffold();
                }
                
              
           

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
            // title2[i],
            style: TextStyle(
              color: Colors.black,
              fontSize: 24.0,
            ),
          ),
          subtitle: Text(
            'One application that will run on most devices, but are code in Javascript',
            // subtitle2[i],
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




