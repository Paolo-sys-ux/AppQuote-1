import 'package:AppQuote/results_screen.dart';
import 'package:AppQuote/send_quotation_screen.dart';
import 'package:flutter/material.dart';
import 'loading.dart';
import 'loading_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Quote',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),

      initialRoute: LoadingScreen.id,
      routes: {
        LoadingScreen.id: (context) => LoadingScreen(),
        ResultsScreen.id: (context) => ResultsScreen(),
        SendQuotation.id: (context) => SendQuotation(),
      },

      home: LoadingScreen(),
    );
  }
}
