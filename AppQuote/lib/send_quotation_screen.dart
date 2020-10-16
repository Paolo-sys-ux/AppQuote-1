import 'package:flutter/material.dart';

class SendQuotation extends StatefulWidget {
  static const String id = 'send_quotation_screen';

  @override
  _SendQuotationState createState() => _SendQuotationState();
}

class _SendQuotationState extends State<SendQuotation> {
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
                        'Send Quotation',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 28.0,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'Your App\'s Estimated Cost',
              style: TextStyle(
                color: Colors.green,
                fontSize: 20.0,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'Php 2,103,297.00',
              style: TextStyle(
                color: Colors.black,
                fontSize: 26.0,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 50.0),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                child: Column(children: <Widget>[
                  TextFormField(
                      decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Your name',
                  ),),
                  TextFormField(
                      decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Your e-mail',
                  ),),
                  TextFormField(
                      decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Phone',
                  ),),
                  TextFormField(
                      decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Additional Information',
                  ),),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
