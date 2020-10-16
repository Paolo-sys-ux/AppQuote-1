import 'package:AppQuote/loading_screen.dart';
import 'package:flutter/material.dart';
import 'loading.dart';
import 'quote_brain.dart';
import 'send_quotation_screen.dart';

QuoteBrain quoteBrain = QuoteBrain();

class ResultsScreen extends StatefulWidget {
  static const String id = 'results_screen';

  @override
  _ResultsScreenState createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                color: Colors.green,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    //back button
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          quoteBrain.getThis();
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
                          'Php 0.00',
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
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(children: <Widget>[
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        'Summary',
                        style: TextStyle(
                          fontSize: 34.0,
                          color: Colors.green[200],
                        ),
                      ),
                      SizedBox(height: 20.0),
                      ListTile(
                        title: Text(
                          quoteBrain.getQuestionText(),
                          style: TextStyle(color: Colors.green),
                          textAlign: TextAlign.center,
                        ),
                        subtitle: Text(
                          quoteBrain.getQuestionSubText(),
                          style: TextStyle(color: Colors.grey, fontSize: 20.0),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      ListTile(
                        title: Text(
                          quoteBrain.getQuestionText(),
                          style: TextStyle(color: Colors.green),
                          textAlign: TextAlign.center,
                        ),
                        subtitle: Text(
                          quoteBrain.getQuestionSubText(),
                          style: TextStyle(color: Colors.grey, fontSize: 20.0),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      ListTile(
                        title: Text(
                          quoteBrain.getQuestionText(),
                          style: TextStyle(color: Colors.green),
                          textAlign: TextAlign.center,
                        ),
                        subtitle: Text(
                          quoteBrain.getQuestionSubText(),
                          style: TextStyle(color: Colors.grey, fontSize: 20.0),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      ListTile(
                        title: Text(
                          quoteBrain.getQuestionText(),
                          style: TextStyle(color: Colors.green),
                          textAlign: TextAlign.center,
                        ),
                        subtitle: Text(
                          quoteBrain.getQuestionSubText(),
                          style: TextStyle(color: Colors.grey, fontSize: 20.0),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      ListTile(
                        title: Text(
                          quoteBrain.getQuestionText(),
                          style: TextStyle(color: Colors.green),
                          textAlign: TextAlign.center,
                        ),
                        subtitle: Text(
                          quoteBrain.getQuestionSubText(),
                          style: TextStyle(color: Colors.grey, fontSize: 20.0),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      ListTile(
                        title: Text(
                          quoteBrain.getQuestionText(),
                          style: TextStyle(color: Colors.green),
                          textAlign: TextAlign.center,
                        ),
                        subtitle: Text(
                          quoteBrain.getQuestionSubText(),
                          style: TextStyle(color: Colors.grey, fontSize: 20.0),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      ListTile(
                        title: Text(
                          quoteBrain.getQuestionText(),
                          style: TextStyle(color: Colors.green),
                          textAlign: TextAlign.center,
                        ),
                        subtitle: Text(
                          quoteBrain.getQuestionSubText(),
                          style: TextStyle(color: Colors.grey, fontSize: 20.0),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      ListTile(
                        title: Text(
                          quoteBrain.getQuestionText(),
                          style: TextStyle(color: Colors.green),
                          textAlign: TextAlign.center,
                        ),
                        subtitle: Text(
                          quoteBrain.getQuestionSubText(),
                          style: TextStyle(color: Colors.grey, fontSize: 20.0),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      ListTile(
                        title: Text(
                          quoteBrain.getQuestionText(),
                          style: TextStyle(color: Colors.green),
                          textAlign: TextAlign.center,
                        ),
                        subtitle: Text(
                          quoteBrain.getQuestionSubText(),
                          style: TextStyle(color: Colors.grey, fontSize: 20.0),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      ListTile(
                        title: Text(
                          quoteBrain.getQuestionText(),
                          style: TextStyle(color: Colors.green),
                          textAlign: TextAlign.center,
                        ),
                        subtitle: Text(
                          quoteBrain.getQuestionSubText(),
                          style: TextStyle(color: Colors.grey, fontSize: 20.0),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      ListTile(
                        title: Text(
                          quoteBrain.getQuestionText(),
                          style: TextStyle(color: Colors.green),
                          textAlign: TextAlign.center,
                        ),
                        subtitle: Text(
                          quoteBrain.getQuestionSubText(),
                          style: TextStyle(color: Colors.grey, fontSize: 20.0),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      ListTile(
                        title: Text(
                          quoteBrain.getQuestionText(),
                          style: TextStyle(color: Colors.green),
                          textAlign: TextAlign.center,
                        ),
                        subtitle: Text(
                          quoteBrain.getQuestionSubText(),
                          style: TextStyle(color: Colors.grey, fontSize: 20.0),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      ListTile(
                        title: Text(
                          quoteBrain.getQuestionText(),
                          style: TextStyle(color: Colors.green),
                          textAlign: TextAlign.center,
                        ),
                        subtitle: Text(
                          quoteBrain.getQuestionSubText(),
                          style: TextStyle(color: Colors.grey, fontSize: 20.0),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      ListTile(
                        title: Text(
                          quoteBrain.getQuestionText(),
                          style: TextStyle(color: Colors.green),
                          textAlign: TextAlign.center,
                        ),
                        subtitle: Text(
                          quoteBrain.getQuestionSubText(),
                          style: TextStyle(color: Colors.grey, fontSize: 20.0),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      ListTile(
                        title: Text(
                          quoteBrain.getQuestionText(),
                          style: TextStyle(color: Colors.green),
                          textAlign: TextAlign.center,
                        ),
                        subtitle: Text(
                          quoteBrain.getQuestionSubText(),
                          style: TextStyle(color: Colors.grey, fontSize: 20.0),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 40.0),
                      FlatButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Start over',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.green,
                            fontStyle: FontStyle.italic,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Divider(
                            height: 20,
                            color: Colors.grey,
                          )),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'This is just an estimate maed by a machine, we have real human waiting to put the pencil to it.',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        height: 50.0,
                        child: FlatButton(
                          onPressed: () {
                            Navigator.pushNamed(context, SendQuotation.id);
                          },
                          color: Colors.orange,
                          child: Text(
                            'Send me a quotation',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'If you have any questions, clarifications or concerns you may contact us directly.',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        height: 50.0,
                        width: 250.0,
                        color: Colors.lightBlueAccent,
                        child: FlatButton(
                          onPressed: () {},
                          child: Text(
                            'Call us now!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 40.0),

                    ]),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
